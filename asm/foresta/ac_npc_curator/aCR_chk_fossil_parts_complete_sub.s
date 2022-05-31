lbl_8054B670:
/* 8054B670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054B674  7C 08 02 A6 */	mflr r0
/* 8054B678  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054B67C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B680  4B B4 F8 51 */	bl func_8009AED0
/* 8054B684  3C 80 80 6A */	lis r4, fossil_parts@ha /* 0x806A4F9C@ha */
/* 8054B688  54 63 18 38 */	slwi r3, r3, 3
/* 8054B68C  38 04 4F 9C */	addi r0, r4, fossil_parts@l /* 0x806A4F9C@l */
/* 8054B690  3B E0 00 01 */	li r31, 1
/* 8054B694  7C 60 1A 14 */	add r3, r0, r3
/* 8054B698  83 A3 00 00 */	lwz r29, 0(r3)
/* 8054B69C  83 83 00 04 */	lwz r28, 4(r3)
/* 8054B6A0  48 00 00 9C */	b lbl_8054B73C
lbl_8054B6A4:
/* 8054B6A4  A0 9C 00 00 */	lhz r4, 0(r28)
/* 8054B6A8  3B C0 00 00 */	li r30, 0
/* 8054B6AC  7F C0 F3 78 */	mr r0, r30
/* 8054B6B0  28 04 1E EC */	cmplwi r4, 0x1eec
/* 8054B6B4  41 80 00 10 */	blt lbl_8054B6C4
/* 8054B6B8  28 04 1F 4F */	cmplwi r4, 0x1f4f
/* 8054B6BC  41 81 00 08 */	bgt lbl_8054B6C4
/* 8054B6C0  38 00 00 01 */	li r0, 1
lbl_8054B6C4:
/* 8054B6C4  20 60 00 00 */	subfic r3, r0, 0
/* 8054B6C8  38 04 E1 14 */	addi r0, r4, -7916
/* 8054B6CC  7C 63 19 10 */	subfe r3, r3, r3
/* 8054B6D0  7C 00 16 70 */	srawi r0, r0, 2
/* 8054B6D4  7C 03 18 38 */	and r3, r0, r3
/* 8054B6D8  4B E7 BD 01 */	bl func_803C73D8
/* 8054B6DC  2C 03 00 01 */	cmpwi r3, 1
/* 8054B6E0  41 80 00 44 */	blt lbl_8054B724
/* 8054B6E4  A0 9C 00 00 */	lhz r4, 0(r28)
/* 8054B6E8  38 00 00 00 */	li r0, 0
/* 8054B6EC  28 04 1E EC */	cmplwi r4, 0x1eec
/* 8054B6F0  41 80 00 10 */	blt lbl_8054B700
/* 8054B6F4  28 04 1F 4F */	cmplwi r4, 0x1f4f
/* 8054B6F8  41 81 00 08 */	bgt lbl_8054B700
/* 8054B6FC  38 00 00 01 */	li r0, 1
lbl_8054B700:
/* 8054B700  20 60 00 00 */	subfic r3, r0, 0
/* 8054B704  38 04 E1 14 */	addi r0, r4, -7916
/* 8054B708  7C 63 19 10 */	subfe r3, r3, r3
/* 8054B70C  7C 00 16 70 */	srawi r0, r0, 2
/* 8054B710  7C 03 18 38 */	and r3, r0, r3
/* 8054B714  4B E7 BC C5 */	bl func_803C73D8
/* 8054B718  2C 03 00 05 */	cmpwi r3, 5
/* 8054B71C  41 81 00 08 */	bgt lbl_8054B724
/* 8054B720  3B C0 00 01 */	li r30, 1
lbl_8054B724:
/* 8054B724  2C 1E 00 00 */	cmpwi r30, 0
/* 8054B728  40 82 00 0C */	bne lbl_8054B734
/* 8054B72C  3B E0 00 00 */	li r31, 0
/* 8054B730  48 00 00 14 */	b lbl_8054B744
lbl_8054B734:
/* 8054B734  3B 9C 00 02 */	addi r28, r28, 2
/* 8054B738  3B BD FF FF */	addi r29, r29, -1
lbl_8054B73C:
/* 8054B73C  2C 1D 00 00 */	cmpwi r29, 0
/* 8054B740  40 82 FF 64 */	bne lbl_8054B6A4
lbl_8054B744:
/* 8054B744  7F E3 FB 78 */	mr r3, r31
/* 8054B748  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B74C  4B B4 F7 D1 */	bl func_8009AF1C
/* 8054B750  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054B754  7C 08 03 A6 */	mtlr r0
/* 8054B758  38 21 00 20 */	addi r1, r1, 0x20
/* 8054B75C  4E 80 00 20 */	blr 
