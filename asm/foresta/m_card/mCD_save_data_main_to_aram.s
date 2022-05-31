lbl_803F9FDC:
/* 803F9FDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9FE0  7C 08 02 A6 */	mflr r0
/* 803F9FE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9FE8  39 61 00 20 */	addi r11, r1, 0x20
/* 803F9FEC  4B CA 0E E9 */	bl func_8009AED4
/* 803F9FF0  28 05 00 03 */	cmplwi r5, 3
/* 803F9FF4  7C 7D 1B 78 */	mr r29, r3
/* 803F9FF8  7C 9E 23 78 */	mr r30, r4
/* 803F9FFC  38 60 00 00 */	li r3, 0
/* 803FA000  41 80 00 08 */	blt lbl_803FA008
/* 803FA004  38 A0 00 00 */	li r5, 0
lbl_803FA008:
/* 803FA008  3C 80 81 17 */	lis r4, l_aram_block_p_table@ha /* 0x8117161C@ha */
/* 803FA00C  54 A0 10 3A */	slwi r0, r5, 2
/* 803FA010  38 84 16 1C */	addi r4, r4, l_aram_block_p_table@l /* 0x8117161C@l */
/* 803FA014  7F E4 00 2E */	lwzx r31, r4, r0
/* 803FA018  28 1F 00 00 */	cmplwi r31, 0
/* 803FA01C  41 82 00 24 */	beq lbl_803FA040
/* 803FA020  7F A3 EB 78 */	mr r3, r29
/* 803FA024  7F C4 F3 78 */	mr r4, r30
/* 803FA028  4B C7 FB 5D */	bl DCFlushRange
/* 803FA02C  7F A3 EB 78 */	mr r3, r29
/* 803FA030  7F E4 FB 78 */	mr r4, r31
/* 803FA034  7F C5 F3 78 */	mr r5, r30
/* 803FA038  4B C6 7B 91 */	bl JC__JKRMainRamToAram_block
/* 803FA03C  38 60 00 01 */	li r3, 1
lbl_803FA040:
/* 803FA040  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA044  4B CA 0E DD */	bl func_8009AF20
/* 803FA048  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FA04C  7C 08 03 A6 */	mtlr r0
/* 803FA050  38 21 00 20 */	addi r1, r1, 0x20
/* 803FA054  4E 80 00 20 */	blr 
