lbl_803FA9C0:
/* 803FA9C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FA9C4  7C 08 02 A6 */	mflr r0
/* 803FA9C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FA9CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA9D0  4B CA 05 01 */	bl func_8009AED0
/* 803FA9D4  7C 7C 1B 79 */	or. r28, r3, r3
/* 803FA9D8  7C BD 2B 78 */	mr r29, r5
/* 803FA9DC  7C DE 33 78 */	mr r30, r6
/* 803FA9E0  38 60 FF FF */	li r3, -1
/* 803FA9E4  41 82 00 48 */	beq lbl_803FAA2C
/* 803FA9E8  2C 04 00 00 */	cmpwi r4, 0
/* 803FA9EC  41 80 00 40 */	blt lbl_803FAA2C
/* 803FA9F0  2C 04 00 08 */	cmpwi r4, 8
/* 803FA9F4  40 80 00 38 */	bge lbl_803FAA2C
/* 803FA9F8  1C C4 00 0C */	mulli r6, r4, 0xc
/* 803FA9FC  3C A0 80 66 */	lis r5, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FAA00  7C 83 23 78 */	mr r3, r4
/* 803FAA04  38 05 E7 08 */	addi r0, r5, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FAA08  7F E0 32 14 */	add r31, r0, r6
/* 803FAA0C  4B FF FA 05 */	bl mCD_get_offset
/* 803FAA10  80 9F 00 00 */	lwz r4, 0(r31)
/* 803FAA14  7C 66 1B 78 */	mr r6, r3
/* 803FAA18  80 BF 00 08 */	lwz r5, 8(r31)
/* 803FAA1C  7F 83 E3 78 */	mr r3, r28
/* 803FAA20  7F A7 EB 78 */	mr r7, r29
/* 803FAA24  7F C8 F3 78 */	mr r8, r30
/* 803FAA28  4B FF E0 F1 */	bl mCD_read_fg
lbl_803FAA2C:
/* 803FAA2C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FAA30  4B CA 04 ED */	bl func_8009AF1C
/* 803FAA34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FAA38  7C 08 03 A6 */	mtlr r0
/* 803FAA3C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FAA40  4E 80 00 20 */	blr 
