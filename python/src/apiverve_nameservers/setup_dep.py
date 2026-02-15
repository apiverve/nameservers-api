from setuptools import setup, find_packages

setup(
    name='apiverve_nameservers',
    version='1.1.13',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Nameservers is a tool for looking up the authoritative nameservers for any domain. Returns nameserver hostnames, IP addresses, reverse DNS, and owner information.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/nameservers?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
