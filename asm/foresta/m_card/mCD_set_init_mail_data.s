lbl_803FA08C:
/* 803FA08C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FA090  7C 08 02 A6 */	mflr r0
/* 803FA094  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FA098  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA09C  4B CA 0E 31 */	bl func_8009AECC
/* 803FA0A0  7C 7B 1B 78 */	mr r27, r3
/* 803FA0A4  3B A0 00 00 */	li r29, 0
/* 803FA0A8  3B DB 00 64 */	addi r30, r27, 0x64
/* 803FA0AC  3B E0 00 00 */	li r31, 0
lbl_803FA0B0:
/* 803FA0B0  38 7F 00 04 */	addi r3, r31, 4
/* 803FA0B4  38 80 00 0C */	li r4, 0xc
/* 803FA0B8  7C 7B 1A 14 */	add r3, r27, r3
/* 803FA0BC  38 A0 00 20 */	li r5, 0x20
/* 803FA0C0  4B FC 09 89 */	bl mem_clear
/* 803FA0C4  3B 80 00 00 */	li r28, 0
lbl_803FA0C8:
/* 803FA0C8  7F C3 F3 78 */	mr r3, r30
/* 803FA0CC  4B FC 26 35 */	bl mMl_clear_mail
/* 803FA0D0  3B 9C 00 01 */	addi r28, r28, 1
/* 803FA0D4  3B DE 01 2A */	addi r30, r30, 0x12a
/* 803FA0D8  2C 1C 00 14 */	cmpwi r28, 0x14
/* 803FA0DC  41 80 FF EC */	blt lbl_803FA0C8
/* 803FA0E0  3B BD 00 01 */	addi r29, r29, 1
/* 803FA0E4  3B FF 00 0C */	addi r31, r31, 0xc
/* 803FA0E8  2C 1D 00 08 */	cmpwi r29, 8
/* 803FA0EC  41 80 FF C4 */	blt lbl_803FA0B0
/* 803FA0F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA0F4  4B CA 0E 25 */	bl func_8009AF18
/* 803FA0F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FA0FC  7C 08 03 A6 */	mtlr r0
/* 803FA100  38 21 00 20 */	addi r1, r1, 0x20
/* 803FA104  4E 80 00 20 */	blr 
