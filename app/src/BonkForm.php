<?php

namespace MySite;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;

class BonkForm extends Form
{
	public function __construct($controller, $name, $action, $actionLabel) 
    {
		$fields = FieldList::create(
			TextField::create('Name', 'Name'),
			TextField::create('Email', 'Email'),
			TextareaField::create('Comments', 'Comments'),
		);
		$actions = FieldList::create(
			FormAction::create($action, $actionLabel)
		);
		$required = RequiredFields::create('Name');
		parent::__construct($controller, $name, $fields, $actions, $required);
	}    
}