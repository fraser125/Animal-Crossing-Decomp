lbl_805AF9E0:
/* 805AF9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AF9E4  7C 08 02 A6 */	mflr r0
/* 805AF9E8  38 80 00 00 */	li r4, 0
/* 805AF9EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AF9F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AF9F4  7C 7F 1B 78 */	mr r31, r3
/* 805AF9F8  48 00 00 4D */	bl change_FGUnit
/* 805AF9FC  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AFA00  4B DC 10 F1 */	bl cKF_SkeletonInfo_R_dt
/* 805AFA04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AFA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AFA0C  7C 08 03 A6 */	mtlr r0
/* 805AFA10  38 21 00 10 */	addi r1, r1, 0x10
/* 805AFA14  4E 80 00 20 */	blr 
