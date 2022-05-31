lbl_803D895C:
/* 803D895C  A0 04 00 00 */	lhz r0, 0(r4)
/* 803D8960  64 00 FF FF */	oris r0, r0, 0xffff
/* 803D8964  60 00 FF EF */	ori r0, r0, 0xffef
/* 803D8968  2C 00 FF FF */	cmpwi r0, -1
/* 803D896C  40 82 00 28 */	bne lbl_803D8994
/* 803D8970  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 803D8974  64 00 FF FF */	oris r0, r0, 0xffff
/* 803D8978  60 00 FB FF */	ori r0, r0, 0xfbff
/* 803D897C  2C 00 FF FF */	cmpwi r0, -1
/* 803D8980  40 82 00 14 */	bne lbl_803D8994
/* 803D8984  80 03 00 00 */	lwz r0, 0(r3)
/* 803D8988  7C 00 00 34 */	cntlzw r0, r0
/* 803D898C  54 00 D9 7E */	srwi r0, r0, 5
/* 803D8990  90 03 00 00 */	stw r0, 0(r3)
lbl_803D8994:
/* 803D8994  80 03 00 00 */	lwz r0, 0(r3)
/* 803D8998  2C 00 00 00 */	cmpwi r0, 0
/* 803D899C  41 82 00 50 */	beq lbl_803D89EC
/* 803D89A0  A0 A4 00 00 */	lhz r5, 0(r4)
/* 803D89A4  64 A0 FF FF */	oris r0, r5, 0xffff
/* 803D89A8  60 00 DF FF */	ori r0, r0, 0xdfff
/* 803D89AC  2C 00 FF FF */	cmpwi r0, -1
/* 803D89B0  40 82 00 4C */	bne lbl_803D89FC
/* 803D89B4  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 803D89B8  64 00 FF FF */	oris r0, r0, 0xffff
/* 803D89BC  60 00 FF EF */	ori r0, r0, 0xffef
/* 803D89C0  2C 00 FF FF */	cmpwi r0, -1
/* 803D89C4  41 82 00 28 */	beq lbl_803D89EC
/* 803D89C8  64 A0 FF FF */	oris r0, r5, 0xffff
/* 803D89CC  60 00 FF EF */	ori r0, r0, 0xffef
/* 803D89D0  2C 00 FF FF */	cmpwi r0, -1
/* 803D89D4  40 82 00 28 */	bne lbl_803D89FC
/* 803D89D8  80 83 00 04 */	lwz r4, 4(r3)
/* 803D89DC  38 04 00 01 */	addi r0, r4, 1
/* 803D89E0  2C 00 00 08 */	cmpwi r0, 8
/* 803D89E4  90 03 00 04 */	stw r0, 4(r3)
/* 803D89E8  40 81 00 14 */	ble lbl_803D89FC
lbl_803D89EC:
/* 803D89EC  38 00 00 00 */	li r0, 0
/* 803D89F0  90 03 00 04 */	stw r0, 4(r3)
/* 803D89F4  38 60 00 01 */	li r3, 1
/* 803D89F8  4E 80 00 20 */	blr 
lbl_803D89FC:
/* 803D89FC  38 60 00 00 */	li r3, 0
/* 803D8A00  4E 80 00 20 */	blr 
