import { module, test } from 'qunit';
import { render } from '@ember/test-helpers';
import { setupRenderingTest } from 'super-rentals/tests/helpers';
import NavBar from 'super-rentals/components/nav-bar';

module('Integration | Component | nav-bar', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders the navigation links', async function (assert) {
    await render(<template><NavBar /></template>);

    assert.dom('nav').exists();
    assert.dom('a.menu-index').hasText('SuperRentals');
    assert.dom('a.menu-about').hasText('About');
    assert.dom('a.menu-contact').hasText('Contact');
  });
});