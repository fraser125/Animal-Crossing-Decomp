lbl_803D9648:
/* 803D9648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D964C  7C 08 02 A6 */	mflr r0
/* 803D9650  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9654  48 01 5E 05 */	bl SubmenuArea_IsPlayer
/* 803D9658  30 03 FF FF */	addic r0, r3, -1
/* 803D965C  7C 60 19 10 */	subfe r3, r0, r3
/* 803D9660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9664  7C 08 03 A6 */	mtlr r0
/* 803D9668  38 21 00 10 */	addi r1, r1, 0x10
/* 803D966C  4E 80 00 20 */	blr 
