lbl_80592D6C:
/* 80592D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592D70  7C 08 02 A6 */	mflr r0
/* 80592D74  3C A0 80 6C */	lis r5, dt_tbl@ha /* 0x806C2AA4@ha */
/* 80592D78  54 86 18 38 */	slwi r6, r4, 3
/* 80592D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592D80  38 05 2A A4 */	addi r0, r5, dt_tbl@l /* 0x806C2AA4@l */
/* 80592D84  7C A0 32 14 */	add r5, r0, r6
/* 80592D88  90 83 09 94 */	stw r4, 0x994(r3)
/* 80592D8C  80 05 00 00 */	lwz r0, 0(r5)
/* 80592D90  90 03 09 98 */	stw r0, 0x998(r3)
/* 80592D94  80 05 00 04 */	lwz r0, 4(r5)
/* 80592D98  90 03 09 64 */	stw r0, 0x964(r3)
/* 80592D9C  4B FF FD 4D */	bl aEMJ_set_animation
/* 80592DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592DA4  7C 08 03 A6 */	mtlr r0
/* 80592DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80592DAC  4E 80 00 20 */	blr 
