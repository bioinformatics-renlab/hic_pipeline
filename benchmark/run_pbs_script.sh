snakemake --snakefile ../scripts/Snakefile --configfile snakemake.config.yaml -p  -k -j 128 --cluster "qsub -l nodes=1:ppn={threads} -N {rule} -q hotel -o pbslog/{rule}.pbs.out -e pbslog/{rule}.pbs.err" --jobscript jobscript.pbs --jobname "{rulename}.{jobid}.pbs" 
