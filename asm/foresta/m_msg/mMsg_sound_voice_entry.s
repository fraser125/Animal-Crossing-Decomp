lbl_803C1F2C:
/* 803C1F2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C1F30  7C 08 02 A6 */	mflr r0
/* 803C1F34  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C1F38  39 61 00 20 */	addi r11, r1, 0x20
/* 803C1F3C  4B CD 8F 95 */	bl func_8009AED0
/* 803C1F40  7C 7F 1B 78 */	mr r31, r3
/* 803C1F44  7C 9C 23 78 */	mr r28, r4
/* 803C1F48  80 03 03 F0 */	lwz r0, 0x3f0(r3)
/* 803C1F4C  7C BD 2B 78 */	mr r29, r5
/* 803C1F50  7C 1C 00 00 */	cmpw r28, r0
/* 803C1F54  41 82 00 A0 */	beq lbl_803C1FF4
/* 803C1F58  80 1F 04 20 */	lwz r0, 0x420(r31)
/* 803C1F5C  7C 1C 00 00 */	cmpw r28, r0
/* 803C1F60  41 82 00 94 */	beq lbl_803C1FF4
/* 803C1F64  93 9F 03 F0 */	stw r28, 0x3f0(r31)
/* 803C1F68  80 1F 04 0C */	lwz r0, 0x40c(r31)
/* 803C1F6C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 803C1F70  41 82 00 50 */	beq lbl_803C1FC0
/* 803C1F74  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 803C1F78  3B C5 00 20 */	addi r30, r5, 0x20
/* 803C1F7C  4B FF E0 CD */	bl func_803C0048
/* 803C1F80  7C 1C 1A 14 */	add r0, r28, r3
/* 803C1F84  7C 7E 00 AE */	lbzx r3, r30, r0
/* 803C1F88  28 03 00 CD */	cmplwi r3, 0xcd
/* 803C1F8C  40 82 00 0C */	bne lbl_803C1F98
/* 803C1F90  38 60 00 FF */	li r3, 0xff
/* 803C1F94  48 00 00 14 */	b lbl_803C1FA8
lbl_803C1F98:
/* 803C1F98  4B FF FE 61 */	bl mMsg_sound_voice_get2
/* 803C1F9C  2C 03 00 00 */	cmpwi r3, 0
/* 803C1FA0  40 80 00 08 */	bge lbl_803C1FA8
/* 803C1FA4  38 60 00 FF */	li r3, 0xff
lbl_803C1FA8:
/* 803C1FA8  9B BF 03 F5 */	stb r29, 0x3f5(r31)
/* 803C1FAC  98 7F 03 F6 */	stb r3, 0x3f6(r31)
/* 803C1FB0  80 1F 04 0C */	lwz r0, 0x40c(r31)
/* 803C1FB4  64 00 00 04 */	oris r0, r0, 4
/* 803C1FB8  90 1F 04 0C */	stw r0, 0x40c(r31)
/* 803C1FBC  48 00 00 38 */	b lbl_803C1FF4
lbl_803C1FC0:
/* 803C1FC0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803C1FC4  28 00 00 81 */	cmplwi r0, 0x81
/* 803C1FC8  41 82 00 2C */	beq lbl_803C1FF4
/* 803C1FCC  38 60 00 01 */	li r3, 1
/* 803C1FD0  38 00 00 FF */	li r0, 0xff
/* 803C1FD4  98 7F 04 03 */	stb r3, 0x403(r31)
/* 803C1FD8  9B BF 03 F4 */	stb r29, 0x3f4(r31)
/* 803C1FDC  98 1F 03 F5 */	stb r0, 0x3f5(r31)
/* 803C1FE0  98 1F 03 F6 */	stb r0, 0x3f6(r31)
/* 803C1FE4  B0 DF 03 EE */	sth r6, 0x3ee(r31)
/* 803C1FE8  80 1F 04 0C */	lwz r0, 0x40c(r31)
/* 803C1FEC  60 00 00 20 */	ori r0, r0, 0x20
/* 803C1FF0  90 1F 04 0C */	stw r0, 0x40c(r31)
lbl_803C1FF4:
/* 803C1FF4  39 61 00 20 */	addi r11, r1, 0x20
/* 803C1FF8  4B CD 8F 25 */	bl func_8009AF1C
/* 803C1FFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C2000  7C 08 03 A6 */	mtlr r0
/* 803C2004  38 21 00 20 */	addi r1, r1, 0x20
/* 803C2008  4E 80 00 20 */	blr 
