all: render_missing

render_all:
	nohup bash singularity_exec.sh quarto render analysis > launch_quarto_render.log 2> launch_quarto_render.err < /dev/null &

render_all_nocache:
	nohup bash singularity_exec.sh quarto render analysis --no-cache > launch_quarto_render.log 2> launch_quarto_render.err < /dev/null &

render_missing:
	nohup bash singularity_exec.sh quarto render > launch_quarto_render.log 2> launch_quarto_render.err < /dev/null &

render_missing_nocache:
	nohup bash singularity_exec.sh quarto render --no-cache > launch_quarto_render.log 2> launch_quarto_render.err < /dev/null &

render_target:
	nohup bash singularity_exec.sh quarto render $(target) --no-cache > launch_quarto_render.log 2> launch_quarto_render.err < /dev/null &

test:
	echo "This works"
