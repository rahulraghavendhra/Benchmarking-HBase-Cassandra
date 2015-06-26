for i in 500 1000 5000 10000 15000 20000 25000 30000 40000 45000 50000 55000 60000 65000 70000 75000 
        do
        for j in 5 10 50 100 150 200 250 300 350 400 450 500
                do
                filename1="transactions_$i"
                filename2="_$j.log"
                filename=$filename1$filename2
                echo "writing to file $filename"
                ./bin/ycsb run hbase -P workloads/workloada -P large.dat -p columnfamily=family -threads $j -target $i > ~/reading_hbase_11112014/$filename
                done
        done

