#!/bin/bash 
# Script contador de secuencias de ADN de un archivo fasta de un pez pulmonado (Protopterus dolloi)

# Definir la variable con el nombre del archivo
fasta_file="CytBDNA.txt.1"

# Verificar si el archivo existe
if [ ! -f "$fasta_file" ]; then
    echo "El archivo $fasta_file no existe."
    exit 1
fi

# Contar líneas que empiezan con '>'
sequence_count=$(grep -c "^>" "$fasta_file")

# Mostrar resultados
echo "Archivo analizado: $fasta_file"
echo "Número de secuencias encontradas: $sequence_count"


