lbl_80518FA0:
/* 80518FA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80518FA4  7C 08 02 A6 */	mflr r0
/* 80518FA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80518FAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80518FB0  4B B8 1F 25 */	bl func_8009AED4
/* 80518FB4  7C 7D 1B 78 */	mr r29, r3
/* 80518FB8  A0 03 09 A0 */	lhz r0, 0x9a0(r3)
/* 80518FBC  2C 00 23 07 */	cmpwi r0, 0x2307
/* 80518FC0  41 82 00 14 */	beq lbl_80518FD4
/* 80518FC4  40 80 00 30 */	bge lbl_80518FF4
/* 80518FC8  2C 00 23 06 */	cmpwi r0, 0x2306
/* 80518FCC  40 80 00 18 */	bge lbl_80518FE4
/* 80518FD0  48 00 00 24 */	b lbl_80518FF4
lbl_80518FD4:
/* 80518FD4  38 60 00 02 */	li r3, 2
/* 80518FD8  48 0A 82 B1 */	bl aTRC_clip_fish_rndsize
/* 80518FDC  7C 7F 1B 78 */	mr r31, r3
/* 80518FE0  48 00 00 20 */	b lbl_80519000
lbl_80518FE4:
/* 80518FE4  38 60 00 01 */	li r3, 1
/* 80518FE8  48 0A 82 A1 */	bl aTRC_clip_fish_rndsize
/* 80518FEC  7C 7F 1B 78 */	mr r31, r3
/* 80518FF0  48 00 00 10 */	b lbl_80519000
lbl_80518FF4:
/* 80518FF4  38 60 00 00 */	li r3, 0
/* 80518FF8  48 0A 82 91 */	bl aTRC_clip_fish_rndsize
/* 80518FFC  7C 7F 1B 78 */	mr r31, r3
lbl_80519000:
/* 80519000  38 61 00 08 */	addi r3, r1, 8
/* 80519004  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80519008  38 A0 02 9E */	li r5, 0x29e
/* 8051900C  4B ED 61 19 */	bl mString_Load_NumberStringAddUnitFromRom
/* 80519010  7C 7E 1B 78 */	mr r30, r3
/* 80519014  4B EA 66 95 */	bl func_803BF6A8
/* 80519018  7F C6 F3 78 */	mr r6, r30
/* 8051901C  38 A1 00 08 */	addi r5, r1, 8
/* 80519020  38 80 00 02 */	li r4, 2
/* 80519024  4B EA 6C 31 */	bl mMsg_Set_free_str
/* 80519028  93 FD 09 A4 */	stw r31, 0x9a4(r29)
/* 8051902C  39 61 00 30 */	addi r11, r1, 0x30
/* 80519030  4B B8 1E F1 */	bl func_8009AF20
/* 80519034  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80519038  7C 08 03 A6 */	mtlr r0
/* 8051903C  38 21 00 30 */	addi r1, r1, 0x30
/* 80519040  4E 80 00 20 */	blr 
