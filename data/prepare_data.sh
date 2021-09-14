wget http://snap.stanford.edu/data/amazon/productGraph/categoryFiles/reviews_Electronics_5.json.gz
wget http://snap.stanford.edu/data/amazon/productGraph/categoryFiles/meta_Electronics.json.gz
gunzip reviews_Electronics_5.json.gz
gunzip meta_Electronics.json.gz
python2 process_data.py meta_Electronics.json reviews_Electronics_5.json
python2 local_aggretor.py
python2 split_by_user.py
python2 generate_voc.py
