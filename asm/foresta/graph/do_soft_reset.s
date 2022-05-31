lbl_80405AB4:
/* 80405AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80405AB8  7C 08 02 A6 */	mflr r0
/* 80405ABC  3C 60 81 1C */	lis r3, SoftResetEnable@ha /* 0x811C5324@ha */
/* 80405AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405AC4  38 00 00 00 */	li r0, 0
/* 80405AC8  98 03 53 24 */	stb r0, SoftResetEnable@l(r3)  /* 0x811C5324@l */
/* 80405ACC  4B F7 74 E9 */	bl mBGM_reset
/* 80405AD0  4B FF E4 29 */	bl mVibctl_reset
/* 80405AD4  48 22 8A DD */	bl sAdo_SoftReset
/* 80405AD8  4B C5 A5 89 */	bl osGetTime
/* 80405ADC  3C C0 81 1C */	lis r6, ResetTime@ha /* 0x811C56A0@ha */
/* 80405AE0  3C A0 81 1C */	lis r5, data_811C5698@ha /* 0x811C5698@ha */
/* 80405AE4  38 C6 56 A0 */	addi r6, r6, ResetTime@l /* 0x811C56A0@l */
/* 80405AE8  38 00 00 01 */	li r0, 1
/* 80405AEC  90 86 00 04 */	stw r4, 4(r6)
/* 80405AF0  90 66 00 00 */	stw r3, 0(r6)
/* 80405AF4  90 05 56 98 */	stw r0, data_811C5698@l(r5)  /* 0x811C5698@l */
/* 80405AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405AFC  7C 08 03 A6 */	mtlr r0
/* 80405B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80405B04  4E 80 00 20 */	blr 
