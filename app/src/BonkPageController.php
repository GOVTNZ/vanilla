<?php

namespace MySite;
use MySite\BonkForm;
use SilverStripe\Core\Environment;
use TijsVerkoyen\Akismet\Akismet as TijsAkismet;
use PageController;

class BonkPageController extends PageController 
{
    private static $allowed_actions = [
        'index', 'CommentEntryForm'
	];

	public function index()
    {
        return [
			'Title' => 'Submit a comment',
		];
	}

    public function CommentEntryForm()
    {
        $form = new BonkForm($this, 'CommentEntryForm', 'storeRecord', 'Create comment');
        return $form;
	}

    public function storeRecord($data, $form)
    {
		$url = Environment::getEnv('SS_BASE_URL');
		$apiKey = Environment::getEnv('SS_AKISMET_API_KEY');
		$api = new TijsAkismet($apiKey, $url);

		$foo = null;
		try {
           $foo = $api->verifyKey();
        } catch (\Exception $e) {
            var_dump($e->getMessage());
		}
		var_dump($foo);

		
		$result = $api->isSpam($data['Comments'], $data['Name'], $data['Email']);
		var_dump($result);
		die;

	}
}