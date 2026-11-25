CREATE TABLE `products` (
                            `id` binary(16) NOT NULL,
                            `active` bit(1) NOT NULL,
                            `added_on` date NOT NULL,
                            `category` enum('COFFEE','EQUIPMENT','PASTRY','TEA') NOT NULL,
                            `name` varchar(100) NOT NULL,
                            `price` decimal(10,2) NOT NULL,
                            `sku` varchar(8) NOT NULL,
                            `stock` int NOT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `UKfhmd06dsmj6k0n90swsh8ie9g` (`sku`),
                            CONSTRAINT `products_chk_1` CHECK ((`stock` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;