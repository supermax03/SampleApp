migration_dir=$1
flyway_path=$2
for filename in $(ls $migration_dir);
do
           
        current_time=$(date +"%Y%m%d%H%M%S%3N")              
        target_name=$( echo "V"$current_time"__"$filename)
        echo $target_name
        cp $migration_dir/$filename $flyway_path/$target_name
        files="${files};${target_name}"

done;

flyway migrate -ignoreMissingMigrations=true;

lista=$(echo $files| tr ";" "\n")
for item in $lista
do
      echo "Borrando $item" 
      rm  $flyway_path/$item
done;

