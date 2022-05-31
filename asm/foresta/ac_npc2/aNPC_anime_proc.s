lbl_8053BBE8:
/* 8053BBE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053BBEC  7C 08 02 A6 */	mflr r0
/* 8053BBF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053BBF4  39 61 00 30 */	addi r11, r1, 0x30
/* 8053BBF8  4B B5 F2 D9 */	bl func_8009AED0
/* 8053BBFC  7C 7F 1B 78 */	mr r31, r3
/* 8053BC00  3C 60 80 6A */	lis r3, aNPC_part_tbl@ha /* 0x806A3444@ha */
/* 8053BC04  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 8053BC08  3B DF 01 A8 */	addi r30, r31, 0x1a8
/* 8053BC0C  88 BF 07 51 */	lbz r5, 0x751(r31)
/* 8053BC10  7C 9C 23 78 */	mr r28, r4
/* 8053BC14  FC 00 00 1E */	fctiwz f0, f0
/* 8053BC18  88 1F 09 70 */	lbz r0, 0x970(r31)
/* 8053BC1C  30 85 FF FF */	addic r4, r5, -1
/* 8053BC20  38 63 34 44 */	addi r3, r3, aNPC_part_tbl@l /* 0x806A3444@l */
/* 8053BC24  7C 84 29 10 */	subfe r4, r4, r5
/* 8053BC28  7F C6 F3 78 */	mr r6, r30
/* 8053BC2C  20 00 00 01 */	subfic r0, r0, 1
/* 8053BC30  54 84 18 38 */	slwi r4, r4, 3
/* 8053BC34  7C 00 00 34 */	cntlzw r0, r0
/* 8053BC38  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053BC3C  7C 83 22 14 */	add r4, r3, r4
/* 8053BC40  38 7F 01 98 */	addi r3, r31, 0x198
/* 8053BC44  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 8053BC48  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8053BC4C  7D 24 00 2E */	lwzx r9, r4, r0
/* 8053BC50  38 9F 01 A0 */	addi r4, r31, 0x1a0
/* 8053BC54  38 BF 01 A4 */	addi r5, r31, 0x1a4
/* 8053BC58  38 FF 03 64 */	addi r7, r31, 0x364
/* 8053BC5C  39 1F 05 20 */	addi r8, r31, 0x520
/* 8053BC60  4B E3 65 F1 */	bl cKF_SkeletonInfo_R_T_combine_play
/* 8053BC64  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8053BC68  7F E3 FB 78 */	mr r3, r31
/* 8053BC6C  7F 84 E3 78 */	mr r4, r28
/* 8053BC70  FC 00 00 1E */	fctiwz f0, f0
/* 8053BC74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8053BC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053BC7C  7C BD 00 50 */	subf r5, r29, r0
/* 8053BC80  30 05 FF FF */	addic r0, r5, -1
/* 8053BC84  7C 00 29 10 */	subfe r0, r0, r5
/* 8053BC88  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 8053BC8C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8053BC90  FC 00 00 1E */	fctiwz f0, f0
/* 8053BC94  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8053BC98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8053BC9C  90 1F 01 94 */	stw r0, 0x194(r31)
/* 8053BCA0  4B FF FE C1 */	bl aNPC_anime_se_proc
/* 8053BCA4  39 61 00 30 */	addi r11, r1, 0x30
/* 8053BCA8  4B B5 F2 75 */	bl func_8009AF1C
/* 8053BCAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053BCB0  7C 08 03 A6 */	mtlr r0
/* 8053BCB4  38 21 00 30 */	addi r1, r1, 0x30
/* 8053BCB8  4E 80 00 20 */	blr 
