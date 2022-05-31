lbl_804BE364:
/* 804BE364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BE368  7C 08 02 A6 */	mflr r0
/* 804BE36C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BE370  39 61 00 20 */	addi r11, r1, 0x20
/* 804BE374  4B BD CB 5D */	bl func_8009AED0
/* 804BE378  38 03 00 B0 */	addi r0, r3, 0xb0
/* 804BE37C  7C 9C 23 78 */	mr r28, r4
/* 804BE380  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BE384  38 00 00 01 */	li r0, 1
/* 804BE388  7C BD 2B 78 */	mr r29, r5
/* 804BE38C  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 804BE390  B0 01 00 08 */	sth r0, 8(r1)
/* 804BE394  4B F4 DE 41 */	bl Matrix_push
/* 804BE398  3B C0 00 00 */	li r30, 0
lbl_804BE39C:
/* 804BE39C  A0 1F 00 00 */	lhz r0, 0(r31)
/* 804BE3A0  28 00 F1 28 */	cmplwi r0, 0xf128
/* 804BE3A4  41 80 00 4C */	blt lbl_804BE3F0
/* 804BE3A8  28 00 F1 48 */	cmplwi r0, 0xf148
/* 804BE3AC  40 80 00 44 */	bge lbl_804BE3F0
/* 804BE3B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BE3B4  54 04 0B FC */	rlwinm r4, r0, 1, 0xf, 0x1e
/* 804BE3B8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 804BE3BC  7C 60 22 14 */	add r3, r0, r4
/* 804BE3C0  A0 63 2C 80 */	lhz r3, 0x2c80(r3)
/* 804BE3C4  28 03 00 00 */	cmplwi r3, 0
/* 804BE3C8  41 82 00 28 */	beq lbl_804BE3F0
/* 804BE3CC  4B F0 AB F5 */	bl func_803C8FC0
/* 804BE3D0  7C 66 1B 78 */	mr r6, r3
/* 804BE3D4  7F A3 EB 78 */	mr r3, r29
/* 804BE3D8  7F 87 E3 78 */	mr r7, r28
/* 804BE3DC  7F C8 F3 78 */	mr r8, r30
/* 804BE3E0  38 81 00 0C */	addi r4, r1, 0xc
/* 804BE3E4  38 A1 00 08 */	addi r5, r1, 8
/* 804BE3E8  38 C6 FF FF */	addi r6, r6, -1
/* 804BE3EC  4B FF FE 65 */	bl func_804BE250
lbl_804BE3F0:
/* 804BE3F0  3B DE 00 01 */	addi r30, r30, 1
/* 804BE3F4  3B FF 00 02 */	addi r31, r31, 2
/* 804BE3F8  2C 1E 01 00 */	cmpwi r30, 0x100
/* 804BE3FC  41 80 FF A0 */	blt lbl_804BE39C
/* 804BE400  4B F4 DE 15 */	bl Matrix_pull
/* 804BE404  39 61 00 20 */	addi r11, r1, 0x20
/* 804BE408  4B BD CB 15 */	bl func_8009AF1C
/* 804BE40C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BE410  7C 08 03 A6 */	mtlr r0
/* 804BE414  38 21 00 20 */	addi r1, r1, 0x20
/* 804BE418  4E 80 00 20 */	blr 
