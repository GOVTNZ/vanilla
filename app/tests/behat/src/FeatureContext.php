<?php

namespace MySite\Tests\Behat;

use SilverStripe\BehatExtension\Context\SilverStripeContext;

/**
 * Features context
 *
 * Context automatically loaded by Behat.
 * Uses subcontexts to extend functionality.
 */
class FeatureContext extends SilverStripeContext
{
    /**
     * @var FixtureFactory
     */
    protected $fixtureFactory;

    /**
     * @BeforeScenario */
    public function beforeScenarioEcho($event)
    {
        echo "Now executing " . $event->getScenario()->getTitle() . " Scenario\n\n";

        // Copy a reference to the fixture factory.
        $this->fixtureFactory = $event->getEnvironment()
            ->getContext(FixtureContext::class)
            ->getFixtureFactory();
    }
}