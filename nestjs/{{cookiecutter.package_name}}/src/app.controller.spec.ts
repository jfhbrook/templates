import t from 'tap';
import { Test, TestingModule } from '@nestjs/testing';
import { AppController } from './app.controller';
import { AppService } from './app.service';

t.test('AppController', async t => {
  let appController: AppController;

  t.before(async () => {
    const app: TestingModule = await Test.createTestingModule({
      controllers: [AppController],
      providers: [AppService],
    }).compile();

    appController = app.get<AppController>(AppController);
  });

  t.test('root', async t => {
    t.test('should return "Hello World!"', async t => {
      t.equal(appController.getHello(), 'Hello World!');
    });
  });
});
