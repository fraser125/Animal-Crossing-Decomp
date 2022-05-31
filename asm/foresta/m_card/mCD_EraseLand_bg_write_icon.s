lbl_803FE2E4:
/* 803FE2E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FE2E8  7C 08 02 A6 */	mflr r0
/* 803FE2EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FE2F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FE2F4  7C 9F 23 78 */	mr r31, r4
/* 803FE2F8  4B FF DF F9 */	bl mCD_write_common
/* 803FE2FC  2C 03 00 01 */	cmpwi r3, 1
/* 803FE300  40 82 00 10 */	bne lbl_803FE310
/* 803FE304  80 9F 00 00 */	lwz r4, 0(r31)
/* 803FE308  38 04 00 01 */	addi r0, r4, 1
/* 803FE30C  90 1F 00 00 */	stw r0, 0(r31)
lbl_803FE310:
/* 803FE310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FE314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FE318  7C 08 03 A6 */	mtlr r0
/* 803FE31C  38 21 00 10 */	addi r1, r1, 0x10
/* 803FE320  4E 80 00 20 */	blr 
