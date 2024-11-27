# interprete de script
#!/bin/zsh

echo hola $USER
echo "numero de argumentos es $#"

# constantes

# banderas
dir="local/3d-models/$prefix-$timestamp-$commit_hash"

{

    function ayuda() {
        echo "\
        Este script crea archivos STL a partir de archivos .scad

        sintaxis:
        ./crear_stls.sh [opciones]

        uso:
        ./crear_stls.sh                exporta todos los archivos STL
        ./crear_stls.sh -h             muestra esta ayuda y cierra
        "
    }

    function exportar_stl() {
       echo "testing"
    }    

    function correr() {
        mkdir -pv $dir

        function terminar() {
            # destruir procesos descendientes
            pkill -P "$$"
        }
        trap terminar EXIT


        echo "terminado el proceso en X segundos"
    }


    while getopts "h?b?p:d:e?c?t?q:" opt; do
    case "$opt" in
        h) help; exit ;;
        *) help; exit ;;
        esac
    done

    correr "${query[@]}"
        
}
