if 'custom' not in globals():
    from mage_ai.data_preparation.decorators import custom
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test


@custom
def transform_custom(*args, **kwargs):
    urls = []
    path = "https://github.com/DataTalksClub/nyc-tlc-data/releases/download/yellow/"
    path = "https://d37ci6vzurychx.cloudfront.net/trip-data/"
    year = kwargs['year']
    for month in range(1,13):
        urls.append(f"{path}{ kwargs['file']}{year}-{str(month).zfill(2)}.parquet")
    return [urls]


@test
def test_output(output, *args) -> None:
    """
    Template code for testing the output of the block.
    """
    assert output is not None, 'The output is undefined'
