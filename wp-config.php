<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'myTravel' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ').]a8~b+8k}2A!]}3zIBh1iNY2i^J+=hv..7dkxiW5R(E|o)XWG=NI<6MotI!{6U' );
define( 'SECURE_AUTH_KEY',  '.ql-iY>Bqpj.7&<k|ik1NOoeWjW^.H~V{/?Eyo~-s2mIwcSnh%MtN,a6A.Qg,T(H' );
define( 'LOGGED_IN_KEY',    '.+}jud7~]@4:.#%Gmru#?}yN8&%h?d91<:cw*4`3Oen;!+R!o9OwJ7%)?2*`95_T' );
define( 'NONCE_KEY',        '{DxDL4^;)n:zwpMzE>s+NGd`_Kmpf:J5u)*&,vVhS2exq,+zK<$Ht?Y3/p(k.7&s' );
define( 'AUTH_SALT',        'yt~}m`X1EK^aZbq{!*CdlT#`z_V}iv!-C.,>708[:b[r-.&ly~!)CPfa.-hlhK[7' );
define( 'SECURE_AUTH_SALT', 'y+S%uEG&*r{Tv]`bww~.iHi,~ptGq<@e/mgXr[SoiNwT>rns0*+m^Q&AOV&6!NP#' );
define( 'LOGGED_IN_SALT',   '{CB1p6QpNFw[EHgFJ{))e:=4RG`>YJt].BTk6lFluWb&#$u42)wQ%PIZ^?~IJ>d/' );
define( 'NONCE_SALT',       'wDkYEsT4uvfHPUgxk)Ss=X,zFU;Ed2_DN*>yt@Z0X+8]SG03w^p*kU;,G$U(0}Rp' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
