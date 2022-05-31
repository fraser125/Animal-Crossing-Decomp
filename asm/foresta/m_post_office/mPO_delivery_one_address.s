lbl_803DF7DC:
/* 803DF7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DF7E0  7C 08 02 A6 */	mflr r0
/* 803DF7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DF7E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DF7EC  7C 7F 1B 78 */	mr r31, r3
/* 803DF7F0  4B FF FD D1 */	bl mPO_delivery_one_address_mail
/* 803DF7F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF7F8  7F E5 FB 78 */	mr r5, r31
/* 803DF7FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF800  3C 63 00 02 */	addis r3, r3, 2
/* 803DF804  7C 64 1B 78 */	mr r4, r3
/* 803DF808  38 63 0E C4 */	addi r3, r3, 0xec4
/* 803DF80C  38 84 0C 6E */	addi r4, r4, 0xc6e
/* 803DF810  4B FF FE 61 */	bl mPO_delivery_one_address_leaflet
/* 803DF814  7F E3 FB 78 */	mr r3, r31
/* 803DF818  4B FF FF 29 */	bl mPO_delivery_one_address_event_leaflet
/* 803DF81C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DF820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DF824  7C 08 03 A6 */	mtlr r0
/* 803DF828  38 21 00 10 */	addi r1, r1, 0x10
/* 803DF82C  4E 80 00 20 */	blr 
