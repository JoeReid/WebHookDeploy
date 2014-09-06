env:
	virtualenv --no-site-packages -p python3 env
	env/bin/pip install pyramid pyramid_mako

run: env
	env/bin/python app.py
