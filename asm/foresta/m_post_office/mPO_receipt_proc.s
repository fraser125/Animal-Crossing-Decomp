lbl_803DF060:
/* 803DF060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DF064  7C 08 02 A6 */	mflr r0
/* 803DF068  2C 04 00 01 */	cmpwi r4, 1
/* 803DF06C  38 A0 00 00 */	li r5, 0
/* 803DF070  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DF074  41 82 00 2C */	beq lbl_803DF0A0
/* 803DF078  40 80 00 10 */	bge lbl_803DF088
/* 803DF07C  2C 04 00 00 */	cmpwi r4, 0
/* 803DF080  40 80 00 14 */	bge lbl_803DF094
/* 803DF084  48 00 00 80 */	b lbl_803DF104
lbl_803DF088:
/* 803DF088  2C 04 00 03 */	cmpwi r4, 3
/* 803DF08C  40 80 00 78 */	bge lbl_803DF104
/* 803DF090  48 00 00 44 */	b lbl_803DF0D4
lbl_803DF094:
/* 803DF094  4B FF FE A1 */	bl mPO_receipt_check_mail
/* 803DF098  7C 65 1B 78 */	mr r5, r3
/* 803DF09C  48 00 00 68 */	b lbl_803DF104
lbl_803DF0A0:
/* 803DF0A0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803DF0A4  7C 64 1B 78 */	mr r4, r3
/* 803DF0A8  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803DF0AC  3C 63 00 02 */	addis r3, r3, 2
/* 803DF0B0  38 63 0C 6E */	addi r3, r3, 0xc6e
/* 803DF0B4  4B FD D8 C1 */	bl mMl_copy_mail
/* 803DF0B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF0BC  38 00 00 00 */	li r0, 0
/* 803DF0C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF0C4  38 A0 00 01 */	li r5, 1
/* 803DF0C8  3C 63 00 02 */	addis r3, r3, 2
/* 803DF0CC  B0 03 0E C4 */	sth r0, 0xec4(r3)
/* 803DF0D0  48 00 00 34 */	b lbl_803DF104
lbl_803DF0D4:
/* 803DF0D4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803DF0D8  7C 64 1B 78 */	mr r4, r3
/* 803DF0DC  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803DF0E0  3C 63 00 02 */	addis r3, r3, 2
/* 803DF0E4  38 63 0D 98 */	addi r3, r3, 0xd98
/* 803DF0E8  4B FD D8 8D */	bl mMl_copy_mail
/* 803DF0EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF0F0  38 00 00 00 */	li r0, 0
/* 803DF0F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF0F8  38 A0 00 01 */	li r5, 1
/* 803DF0FC  3C 63 00 02 */	addis r3, r3, 2
/* 803DF100  B0 03 0E C6 */	sth r0, 0xec6(r3)
lbl_803DF104:
/* 803DF104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DF108  7C A3 2B 78 */	mr r3, r5
/* 803DF10C  7C 08 03 A6 */	mtlr r0
/* 803DF110  38 21 00 10 */	addi r1, r1, 0x10
/* 803DF114  4E 80 00 20 */	blr 
