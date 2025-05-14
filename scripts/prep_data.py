import os
import sentencepiece

import numpy as np

# Define a few functions to read and write files

def read_file(filename):
  """
  Read a file and return a list of sentences

  Parameters
  ----------
  filename : str
      Name of the file to read

  Returns
  -------
  list of str
      List of sentences in the file
  """
  list_sents = []
  with open(filename) as fp:
    for line in fp:
      list_sents.append(line.strip())
  return list_sents

def write_file(list_sents, filename):
    """
    Write a list of sentences to a file

    Parameters
    ----------
    list_sents : list of str
        List of sentences to write to the file
    filename : str
        Name of the file to write to

    Returns
    -------
    None
    """
    with open(filename, 'w') as fp:
        for sent in list_sents:
            fp.write(sent + '\n')

def create_vocab(n_words):
    """
    Create the vocabulary files for the given number of words

    Parameters
    ----------
    n_words : int
        Number of words in the vocabulary

    Returns
    -------
    None
    """

    #Loading datasets
    train_src = read_file(os.path.join(DIRECTORY,'data/train.src'))
    train_trg = read_file(os.path.join(DIRECTORY,'data/train.trg'))
    dev_src = read_file(os.path.join(DIRECTORY,'data/dev.src'))
    dev_trg = read_file(os.path.join(DIRECTORY,'data/dev.trg'))
    test_src = read_file(os.path.join(DIRECTORY,'data/test.src'))
    test_trg = read_file(os.path.join(DIRECTORY,'data/test.trg'))

    # Loading the bpe model
    spm = sentencepiece.SentencePieceProcessor(model_file=os.path.join(DIRECTORY,'data/bpe_joint_1000.model'))

    # Apply the bpe model to the datasets
    train_src_sp = spm.encode(train_src, out_type=str)
    train_trg_sp = spm.encode(train_trg, out_type=str)
    dev_src_sp = spm.encode(dev_src, out_type=str)
    dev_trg_sp = spm.encode(dev_trg, out_type=str)
    test_src_sp = spm.encode(test_src, out_type=str)
    test_trg_sp = spm.encode(test_trg, out_type=str)

    # FIXME: this should be an assert, not a print
    # Checking the result (src and trg should have the same length)
    #print(len(train_src_sp), len(train_trg_sp))
    #print(len(dev_src_sp), len(dev_trg_sp))
    #print(len(test_src_sp), len(test_trg_sp))

    # fixing the code above
    assert len(train_src_sp) == len(train_trg_sp)
    assert len(dev_src_sp) == len(dev_trg_sp)
    assert len(test_src_sp) == len(test_trg_sp)
    

    # We create the files bpe-zed
    write_file([' '.join(sent) for sent in train_src_sp], os.path.join(DIRECTORY,'data/train.sp%g.src'%n_words))
    write_file([' '.join(sent) for sent in train_trg_sp], os.path.join(DIRECTORY,'data/train.sp%g.trg'%n_words))
    write_file([' '.join(sent) for sent in dev_src_sp], os.path.join(DIRECTORY,'data/dev.sp%g.src'%n_words))
    write_file([' '.join(sent) for sent in dev_trg_sp], os.path.join(DIRECTORY,'data/dev.sp%g.trg'%n_words))
    write_file([' '.join(sent) for sent in test_src_sp], os.path.join(DIRECTORY,'data/test.sp%g.src'%n_words))
    write_file([' '.join(sent) for sent in test_trg_sp], os.path.join(DIRECTORY,'data/test.sp%g.trg'%n_words))


# ------------------ #

# absolute path to the github repo directory where all the data are stored
DIRECTORY = "/home/users/s/solfrini/git/normalisation_training"

# define function to run as default when the script is executed
if __name__ == "__main__":
    
    # 500
    sentencepiece.SentencePieceTrainer.train(input=os.path.join(DIRECTORY,"data/vocabulary.src-trg"),
                                model_prefix=os.path.join(DIRECTORY,"data/bpe_joint_500"),
                                vocab_size=500)
    
    
    # 1000
    sentencepiece.SentencePieceTrainer.train(input=os.path.join(DIRECTORY,"data/vocabulary.src-trg"),
                                model_prefix=os.path.join(DIRECTORY,"data/bpe_joint_1000"),
                                vocab_size=1000)

    # 2000
    sentencepiece.SentencePieceTrainer.train(input=os.path.join(DIRECTORY,"data/vocabulary.src-trg"),
                                model_prefix=os.path.join(DIRECTORY,"data/bpe_joint_2000"),
                                vocab_size=2000)

    #3000
    sentencepiece.SentencePieceTrainer.train(input=os.path.join(DIRECTORY,"data/vocabulary.src-trg"),
                                model_prefix=os.path.join(DIRECTORY,"data/bpe_joint_3000"),
                                vocab_size=3000)

    #4000
    sentencepiece.SentencePieceTrainer.train(input=os.path.join(DIRECTORY,"data/vocabulary.src-trg"),
                                model_prefix=os.path.join(DIRECTORY,"data/bpe_joint_4000"),
                                vocab_size=4000)
    
    create_vocab(n_words = 500)
    create_vocab(n_words = 1000)
    create_vocab(n_words = 2000)
    create_vocab(n_words = 3000)
    create_vocab(n_words = 4000)