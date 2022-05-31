lbl_8056ECD0:
/* 8056ECD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056ECD4  7C 08 02 A6 */	mflr r0
/* 8056ECD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056ECDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8056ECE0  4B B2 C1 F5 */	bl func_8009AED4
/* 8056ECE4  7C BF 2B 78 */	mr r31, r5
/* 8056ECE8  3C A0 80 6C */	lis r5, process@ha /* 0x806BECE4@ha */
/* 8056ECEC  9B E3 09 98 */	stb r31, 0x998(r3)
/* 8056ECF0  7C 9E 23 78 */	mr r30, r4
/* 8056ECF4  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 8056ECF8  38 A5 EC E4 */	addi r5, r5, process@l /* 0x806BECE4@l */
/* 8056ECFC  7C 05 00 2E */	lwzx r0, r5, r0
/* 8056ED00  7C 7D 1B 78 */	mr r29, r3
/* 8056ED04  7F E4 FB 78 */	mr r4, r31
/* 8056ED08  90 03 09 94 */	stw r0, 0x994(r3)
/* 8056ED0C  4B FF EF A9 */	bl aPMAN_set_animation
/* 8056ED10  7F A3 EB 78 */	mr r3, r29
/* 8056ED14  7F C4 F3 78 */	mr r4, r30
/* 8056ED18  7F E5 FB 78 */	mr r5, r31
/* 8056ED1C  4B FF FF 69 */	bl aPMAN_init_proc
/* 8056ED20  7F A3 EB 78 */	mr r3, r29
/* 8056ED24  7F E4 FB 78 */	mr r4, r31
/* 8056ED28  4B FF FF 91 */	bl aPMAN_set_talk_permit
/* 8056ED2C  39 61 00 20 */	addi r11, r1, 0x20
/* 8056ED30  4B B2 C1 F1 */	bl func_8009AF20
/* 8056ED34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056ED38  7C 08 03 A6 */	mtlr r0
/* 8056ED3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056ED40  4E 80 00 20 */	blr 
