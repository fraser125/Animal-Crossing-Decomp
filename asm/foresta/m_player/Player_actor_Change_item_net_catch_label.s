lbl_804DA7F8:
/* 804DA7F8  88 03 0E 75 */	lbz r0, 0xe75(r3)
/* 804DA7FC  7C 00 07 75 */	extsb. r0, r0
/* 804DA800  40 82 00 88 */	bne lbl_804DA888
/* 804DA804  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DA808  2C 00 00 2E */	cmpwi r0, 0x2e
/* 804DA80C  41 82 00 7C */	beq lbl_804DA888
/* 804DA810  40 80 00 10 */	bge lbl_804DA820
/* 804DA814  2C 00 00 2C */	cmpwi r0, 0x2c
/* 804DA818  40 80 00 10 */	bge lbl_804DA828
/* 804DA81C  48 00 00 6C */	b lbl_804DA888
lbl_804DA820:
/* 804DA820  2C 00 00 31 */	cmpwi r0, 0x31
/* 804DA824  40 80 00 64 */	bge lbl_804DA888
lbl_804DA828:
/* 804DA828  90 83 0E 70 */	stw r4, 0xe70(r3)
/* 804DA82C  7C A0 07 75 */	extsb. r0, r5
/* 804DA830  98 A3 0E 74 */	stb r5, 0xe74(r3)
/* 804DA834  40 82 00 18 */	bne lbl_804DA84C
/* 804DA838  28 04 00 00 */	cmplwi r4, 0
/* 804DA83C  41 82 00 10 */	beq lbl_804DA84C
/* 804DA840  80 04 01 D0 */	lwz r0, 0x1d0(r4)
/* 804DA844  90 03 0F 2C */	stw r0, 0xf2c(r3)
/* 804DA848  48 00 00 38 */	b lbl_804DA880
lbl_804DA84C:
/* 804DA84C  28 04 00 00 */	cmplwi r4, 0
/* 804DA850  41 82 00 28 */	beq lbl_804DA878
/* 804DA854  A8 04 00 00 */	lha r0, 0(r4)
/* 804DA858  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 804DA85C  40 82 00 10 */	bne lbl_804DA86C
/* 804DA860  38 00 00 08 */	li r0, 8
/* 804DA864  90 03 0F 2C */	stw r0, 0xf2c(r3)
/* 804DA868  48 00 00 18 */	b lbl_804DA880
lbl_804DA86C:
/* 804DA86C  38 00 00 26 */	li r0, 0x26
/* 804DA870  90 03 0F 2C */	stw r0, 0xf2c(r3)
/* 804DA874  48 00 00 0C */	b lbl_804DA880
lbl_804DA878:
/* 804DA878  38 00 FF FF */	li r0, -1
/* 804DA87C  90 03 0F 2C */	stw r0, 0xf2c(r3)
lbl_804DA880:
/* 804DA880  38 60 00 01 */	li r3, 1
/* 804DA884  4E 80 00 20 */	blr 
lbl_804DA888:
/* 804DA888  38 60 00 00 */	li r3, 0
/* 804DA88C  4E 80 00 20 */	blr 
