lbl_804FFBBC:
/* 804FFBBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFBC0  7C 08 02 A6 */	mflr r0
/* 804FFBC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFBC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FFBCC  7C 9F 23 78 */	mr r31, r4
/* 804FFBD0  7F E5 FB 78 */	mr r5, r31
/* 804FFBD4  38 80 00 55 */	li r4, 0x55
/* 804FFBD8  93 C1 00 08 */	stw r30, 8(r1)
/* 804FFBDC  7C 7E 1B 78 */	mr r30, r3
/* 804FFBE0  4B FD A8 79 */	bl Player_actor_check_request_main_able
/* 804FFBE4  2C 03 00 00 */	cmpwi r3, 0
/* 804FFBE8  41 82 00 1C */	beq lbl_804FFC04
/* 804FFBEC  7F C3 F3 78 */	mr r3, r30
/* 804FFBF0  7F E5 FB 78 */	mr r5, r31
/* 804FFBF4  38 80 00 55 */	li r4, 0x55
/* 804FFBF8  4B FD 54 1D */	bl Player_actor_request_main_index
/* 804FFBFC  38 60 00 01 */	li r3, 1
/* 804FFC00  48 00 00 08 */	b lbl_804FFC08
lbl_804FFC04:
/* 804FFC04  38 60 00 00 */	li r3, 0
lbl_804FFC08:
/* 804FFC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFC0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FFC10  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FFC14  7C 08 03 A6 */	mtlr r0
/* 804FFC18  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFC1C  4E 80 00 20 */	blr 
