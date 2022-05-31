lbl_803F3270:
/* 803F3270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F3274  7C 08 02 A6 */	mflr r0
/* 803F3278  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F327C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F3280  93 C1 00 08 */	stw r30, 8(r1)
/* 803F3284  7C 7E 1B 78 */	mr r30, r3
/* 803F3288  4B FE 63 B9 */	bl get_player_actor_withoutCheck
/* 803F328C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3290  38 00 00 00 */	li r0, 0
/* 803F3294  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F3298  7C 7F 1B 78 */	mr r31, r3
/* 803F329C  3C 64 00 03 */	addis r3, r4, 3
/* 803F32A0  98 03 88 7D */	stb r0, -0x7783(r3)
/* 803F32A4  4B FF F4 C1 */	bl mTRC_go_process
/* 803F32A8  2C 03 00 00 */	cmpwi r3, 0
/* 803F32AC  41 82 00 30 */	beq lbl_803F32DC
/* 803F32B0  28 1F 00 00 */	cmplwi r31, 0
/* 803F32B4  40 82 00 08 */	bne lbl_803F32BC
/* 803F32B8  48 00 00 24 */	b lbl_803F32DC
lbl_803F32BC:
/* 803F32BC  7F C3 F3 78 */	mr r3, r30
/* 803F32C0  4B FF F7 D1 */	bl mTRC_schedule
/* 803F32C4  7C 60 1B 78 */	mr r0, r3
/* 803F32C8  7F C3 F3 78 */	mr r3, r30
/* 803F32CC  7C 04 03 78 */	mr r4, r0
/* 803F32D0  4B FF F9 45 */	bl mTRC_trainControl
/* 803F32D4  7F C3 F3 78 */	mr r3, r30
/* 803F32D8  4B FF FC C9 */	bl mTRC_trainSet
lbl_803F32DC:
/* 803F32DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F32E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F32E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F32E8  7C 08 03 A6 */	mtlr r0
/* 803F32EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803F32F0  4E 80 00 20 */	blr 
