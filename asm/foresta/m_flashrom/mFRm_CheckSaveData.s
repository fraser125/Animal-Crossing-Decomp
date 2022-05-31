lbl_803AC5F4:
/* 803AC5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC5F8  7C 08 02 A6 */	mflr r0
/* 803AC5FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AC600  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AC604  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC608  3C 83 00 01 */	addis r4, r3, 1
/* 803AC60C  A0 84 91 2A */	lhz r4, -0x6ed6(r4)
/* 803AC610  4B FF FF 7D */	bl mFRm_CheckSaveData_common
/* 803AC614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC618  7C 08 03 A6 */	mtlr r0
/* 803AC61C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC620  4E 80 00 20 */	blr 
