lbl_80485F60:
/* 80485F60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80485F64  7C 08 02 A6 */	mflr r0
/* 80485F68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80485F6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80485F70  4B C1 4F 5D */	bl func_8009AECC
/* 80485F74  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80485F78  38 00 00 00 */	li r0, 0
/* 80485F7C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80485F80  7C 7B 1B 78 */	mr r27, r3
/* 80485F84  3C 85 00 02 */	addis r4, r5, 2
/* 80485F88  90 01 00 08 */	stw r0, 8(r1)
/* 80485F8C  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 80485F90  3F A5 00 01 */	addis r29, r5, 1
/* 80485F94  3B 80 00 00 */	li r28, 0
/* 80485F98  3B E3 00 94 */	addi r31, r3, 0x94
/* 80485F9C  3B C3 02 EC */	addi r30, r3, 0x2ec
/* 80485FA0  3B BD 74 38 */	addi r29, r29, 0x7438
lbl_80485FA4:
/* 80485FA4  80 01 00 08 */	lwz r0, 8(r1)
/* 80485FA8  2C 00 FF FF */	cmpwi r0, -1
/* 80485FAC  41 82 00 28 */	beq lbl_80485FD4
/* 80485FB0  7F 63 DB 78 */	mr r3, r27
/* 80485FB4  7F E5 FB 78 */	mr r5, r31
/* 80485FB8  7F 86 E3 78 */	mr r6, r28
/* 80485FBC  38 81 00 08 */	addi r4, r1, 8
/* 80485FC0  4B FF FB 15 */	bl aQMgr_actor_regist_quest
/* 80485FC4  3B 9C 00 01 */	addi r28, r28, 1
/* 80485FC8  3B FF 00 28 */	addi r31, r31, 0x28
/* 80485FCC  2C 1C 00 0F */	cmpwi r28, 0xf
/* 80485FD0  41 80 FF D4 */	blt lbl_80485FA4
lbl_80485FD4:
/* 80485FD4  3B E0 00 00 */	li r31, 0
lbl_80485FD8:
/* 80485FD8  80 01 00 08 */	lwz r0, 8(r1)
/* 80485FDC  2C 00 FF FF */	cmpwi r0, -1
/* 80485FE0  41 82 00 28 */	beq lbl_80486008
/* 80485FE4  7F 63 DB 78 */	mr r3, r27
/* 80485FE8  7F C5 F3 78 */	mr r5, r30
/* 80485FEC  7F E6 FB 78 */	mr r6, r31
/* 80485FF0  38 81 00 08 */	addi r4, r1, 8
/* 80485FF4  4B FF FA E1 */	bl aQMgr_actor_regist_quest
/* 80485FF8  3B FF 00 01 */	addi r31, r31, 1
/* 80485FFC  3B DE 00 58 */	addi r30, r30, 0x58
/* 80486000  2C 1F 00 05 */	cmpwi r31, 5
/* 80486004  41 80 FF D4 */	blt lbl_80485FD8
lbl_80486008:
/* 80486008  3B E0 00 00 */	li r31, 0
lbl_8048600C:
/* 8048600C  80 01 00 08 */	lwz r0, 8(r1)
/* 80486010  2C 00 FF FF */	cmpwi r0, -1
/* 80486014  41 82 00 28 */	beq lbl_8048603C
/* 80486018  7F 63 DB 78 */	mr r3, r27
/* 8048601C  7F E6 FB 78 */	mr r6, r31
/* 80486020  38 81 00 08 */	addi r4, r1, 8
/* 80486024  38 BD 08 A8 */	addi r5, r29, 0x8a8
/* 80486028  4B FF FA AD */	bl aQMgr_actor_regist_quest
/* 8048602C  3B FF 00 01 */	addi r31, r31, 1
/* 80486030  3B BD 09 88 */	addi r29, r29, 0x988
/* 80486034  2C 1F 00 0F */	cmpwi r31, 0xf
/* 80486038  41 80 FF D4 */	blt lbl_8048600C
lbl_8048603C:
/* 8048603C  39 61 00 30 */	addi r11, r1, 0x30
/* 80486040  4B C1 4E D9 */	bl func_8009AF18
/* 80486044  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80486048  7C 08 03 A6 */	mtlr r0
/* 8048604C  38 21 00 30 */	addi r1, r1, 0x30
/* 80486050  4E 80 00 20 */	blr 
