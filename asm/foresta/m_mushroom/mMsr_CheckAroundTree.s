lbl_803C8820:
/* 803C8820  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803C8824  3C 80 80 66 */	lis r4, area_table_572@ha /* 0x8065A304@ha */
/* 803C8828  28 00 00 0F */	cmplwi r0, 0xf
/* 803C882C  38 C0 00 00 */	li r6, 0
/* 803C8830  38 04 A3 04 */	addi r0, r4, area_table_572@l /* 0x8065A304@l */
/* 803C8834  7C 04 03 78 */	mr r4, r0
/* 803C8838  40 80 00 B0 */	bge lbl_803C88E8
/* 803C883C  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 803C8840  28 00 00 0F */	cmplwi r0, 0xf
/* 803C8844  40 80 00 A4 */	bge lbl_803C88E8
/* 803C8848  A0 03 00 00 */	lhz r0, 0(r3)
/* 803C884C  28 00 08 04 */	cmplwi r0, 0x804
/* 803C8850  41 82 00 6C */	beq lbl_803C88BC
/* 803C8854  28 00 08 0C */	cmplwi r0, 0x80c
/* 803C8858  41 82 00 64 */	beq lbl_803C88BC
/* 803C885C  28 00 08 14 */	cmplwi r0, 0x814
/* 803C8860  41 82 00 5C */	beq lbl_803C88BC
/* 803C8864  28 00 08 1C */	cmplwi r0, 0x81c
/* 803C8868  41 82 00 54 */	beq lbl_803C88BC
/* 803C886C  28 00 08 24 */	cmplwi r0, 0x824
/* 803C8870  41 82 00 4C */	beq lbl_803C88BC
/* 803C8874  28 00 08 2C */	cmplwi r0, 0x82c
/* 803C8878  41 82 00 44 */	beq lbl_803C88BC
/* 803C887C  28 00 08 31 */	cmplwi r0, 0x831
/* 803C8880  41 82 00 3C */	beq lbl_803C88BC
/* 803C8884  28 00 08 36 */	cmplwi r0, 0x836
/* 803C8888  41 82 00 34 */	beq lbl_803C88BC
/* 803C888C  28 00 08 3B */	cmplwi r0, 0x83b
/* 803C8890  41 82 00 2C */	beq lbl_803C88BC
/* 803C8894  28 00 08 53 */	cmplwi r0, 0x853
/* 803C8898  41 82 00 24 */	beq lbl_803C88BC
/* 803C889C  28 00 08 5B */	cmplwi r0, 0x85b
/* 803C88A0  41 82 00 1C */	beq lbl_803C88BC
/* 803C88A4  28 00 08 61 */	cmplwi r0, 0x861
/* 803C88A8  41 82 00 14 */	beq lbl_803C88BC
/* 803C88AC  28 00 08 68 */	cmplwi r0, 0x868
/* 803C88B0  41 82 00 0C */	beq lbl_803C88BC
/* 803C88B4  28 00 08 67 */	cmplwi r0, 0x867
/* 803C88B8  40 82 00 30 */	bne lbl_803C88E8
lbl_803C88BC:
/* 803C88BC  38 00 00 05 */	li r0, 5
/* 803C88C0  7C 09 03 A6 */	mtctr r0
lbl_803C88C4:
/* 803C88C4  80 04 00 00 */	lwz r0, 0(r4)
/* 803C88C8  54 00 08 3C */	slwi r0, r0, 1
/* 803C88CC  7C 03 02 2E */	lhzx r0, r3, r0
/* 803C88D0  28 00 00 00 */	cmplwi r0, 0
/* 803C88D4  40 82 00 0C */	bne lbl_803C88E0
/* 803C88D8  38 C0 00 01 */	li r6, 1
/* 803C88DC  48 00 00 0C */	b lbl_803C88E8
lbl_803C88E0:
/* 803C88E0  38 84 00 04 */	addi r4, r4, 4
/* 803C88E4  42 00 FF E0 */	bdnz lbl_803C88C4
lbl_803C88E8:
/* 803C88E8  7C C3 33 78 */	mr r3, r6
/* 803C88EC  4E 80 00 20 */	blr 
