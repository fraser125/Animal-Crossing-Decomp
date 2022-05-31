lbl_805F8210:
/* 805F8210  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F8214  7C 08 02 A6 */	mflr r0
/* 805F8218  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F821C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F8220  4B AA 2C AD */	bl func_8009AECC
/* 805F8224  7C 7B 1B 78 */	mr r27, r3
/* 805F8228  7C 9C 23 78 */	mr r28, r4
/* 805F822C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805F8230  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805F8234  83 C4 09 80 */	lwz r30, 0x980(r4)
/* 805F8238  38 63 00 08 */	addi r3, r3, 8
/* 805F823C  4B FF 79 25 */	bl mTG_get_table_idx
/* 805F8240  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F8244  7C 7D 1B 78 */	mr r29, r3
/* 805F8248  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805F824C  3F E5 00 02 */	addis r31, r5, 2
/* 805F8250  38 80 00 00 */	li r4, 0
/* 805F8254  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F8258  4B DE 84 D1 */	bl mPr_GetPossessionItemIdx
/* 805F825C  2C 03 00 00 */	cmpwi r3, 0
/* 805F8260  40 80 00 24 */	bge lbl_805F8284
/* 805F8264  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F8268  A0 03 04 A4 */	lhz r0, 0x4a4(r3)
/* 805F826C  28 00 22 24 */	cmplwi r0, 0x2224
/* 805F8270  41 80 00 0C */	blt lbl_805F827C
/* 805F8274  28 00 22 2B */	cmplwi r0, 0x222b
/* 805F8278  40 81 00 0C */	ble lbl_805F8284
lbl_805F827C:
/* 805F827C  28 00 00 00 */	cmplwi r0, 0
/* 805F8280  40 82 00 5C */	bne lbl_805F82DC
lbl_805F8284:
/* 805F8284  38 00 00 06 */	li r0, 6
/* 805F8288  7F 63 DB 78 */	mr r3, r27
/* 805F828C  B0 1E 02 32 */	sth r0, 0x232(r30)
/* 805F8290  7F A4 EB 78 */	mr r4, r29
/* 805F8294  4B FF 15 8D */	bl mNW_get_image_no
/* 805F8298  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805F829C  38 00 00 1B */	li r0, 0x1b
/* 805F82A0  38 83 22 24 */	addi r4, r3, 0x2224
/* 805F82A4  38 A0 00 00 */	li r5, 0
/* 805F82A8  B0 9E 02 34 */	sth r4, 0x234(r30)
/* 805F82AC  7F 63 DB 78 */	mr r3, r27
/* 805F82B0  38 80 00 00 */	li r4, 0
/* 805F82B4  98 1E 03 64 */	stb r0, 0x364(r30)
/* 805F82B8  4B FF 74 FD */	bl mTG_return_tag_init
/* 805F82BC  80 9B 00 2C */	lwz r4, 0x2c(r27)
/* 805F82C0  38 A0 00 01 */	li r5, 1
/* 805F82C4  38 00 00 0E */	li r0, 0xe
/* 805F82C8  38 60 00 5E */	li r3, 0x5e
/* 805F82CC  B0 A4 00 08 */	sth r5, 8(r4)
/* 805F82D0  B0 1E 00 16 */	sth r0, 0x16(r30)
/* 805F82D4  48 03 5A 31 */	bl sAdo_SysTrgStart
/* 805F82D8  48 00 00 14 */	b lbl_805F82EC
lbl_805F82DC:
/* 805F82DC  7F 63 DB 78 */	mr r3, r27
/* 805F82E0  7F 84 E3 78 */	mr r4, r28
/* 805F82E4  38 A0 00 12 */	li r5, 0x12
/* 805F82E8  4B FF AB 39 */	bl mTG_open_warning_window
lbl_805F82EC:
/* 805F82EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805F82F0  4B AA 2C 29 */	bl func_8009AF18
/* 805F82F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F82F8  7C 08 03 A6 */	mtlr r0
/* 805F82FC  38 21 00 20 */	addi r1, r1, 0x20
/* 805F8300  4E 80 00 20 */	blr 
