lbl_803D76D8:
/* 803D76D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D76DC  7C 08 02 A6 */	mflr r0
/* 803D76E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D76E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D76E8  3B E0 00 00 */	li r31, 0
/* 803D76EC  4B FC 35 49 */	bl mEv_CheckFirstJob
/* 803D76F0  2C 03 00 01 */	cmpwi r3, 1
/* 803D76F4  41 82 00 18 */	beq lbl_803D770C
/* 803D76F8  38 60 00 31 */	li r3, 0x31
/* 803D76FC  38 80 00 01 */	li r4, 1
/* 803D7700  4B FC 64 01 */	bl mEv_check_status
/* 803D7704  2C 03 00 00 */	cmpwi r3, 0
/* 803D7708  41 82 00 08 */	beq lbl_803D7710
lbl_803D770C:
/* 803D770C  3B E0 00 01 */	li r31, 1
lbl_803D7710:
/* 803D7710  2C 1F 00 01 */	cmpwi r31, 1
/* 803D7714  40 82 00 0C */	bne lbl_803D7720
/* 803D7718  4B FF FE ED */	bl mNPS_schedule_manager_sub0
/* 803D771C  48 00 00 08 */	b lbl_803D7724
lbl_803D7720:
/* 803D7720  4B FF FF 1D */	bl mNPS_schedule_manager_sub1
lbl_803D7724:
/* 803D7724  4B FF FF 7D */	bl mNPS_island_schedule_manager
/* 803D7728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D772C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D7730  7C 08 03 A6 */	mtlr r0
/* 803D7734  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7738  4E 80 00 20 */	blr 
