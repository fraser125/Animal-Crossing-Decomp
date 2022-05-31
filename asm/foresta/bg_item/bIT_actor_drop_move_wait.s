lbl_804BAC14:
/* 804BAC14  A0 83 00 88 */	lhz r4, 0x88(r3)
/* 804BAC18  28 04 00 00 */	cmplwi r4, 0
/* 804BAC1C  41 82 00 20 */	beq lbl_804BAC3C
/* 804BAC20  38 04 FF FF */	addi r0, r4, -1
/* 804BAC24  38 80 00 00 */	li r4, 0
/* 804BAC28  B0 03 00 88 */	sth r0, 0x88(r3)
/* 804BAC2C  38 00 00 05 */	li r0, 5
/* 804BAC30  B0 83 00 76 */	sth r4, 0x76(r3)
/* 804BAC34  B0 03 00 70 */	sth r0, 0x70(r3)
/* 804BAC38  4E 80 00 20 */	blr 
lbl_804BAC3C:
/* 804BAC3C  A0 03 00 76 */	lhz r0, 0x76(r3)
/* 804BAC40  28 00 00 FF */	cmplwi r0, 0xff
/* 804BAC44  41 81 00 20 */	bgt lbl_804BAC64
/* 804BAC48  20 00 00 FF */	subfic r0, r0, 0xff
/* 804BAC4C  98 03 00 72 */	stb r0, 0x72(r3)
/* 804BAC50  A0 83 00 76 */	lhz r4, 0x76(r3)
/* 804BAC54  A8 03 00 70 */	lha r0, 0x70(r3)
/* 804BAC58  7C 04 02 14 */	add r0, r4, r0
/* 804BAC5C  B0 03 00 76 */	sth r0, 0x76(r3)
/* 804BAC60  4E 80 00 20 */	blr 
lbl_804BAC64:
/* 804BAC64  38 00 00 00 */	li r0, 0
/* 804BAC68  98 03 00 72 */	stb r0, 0x72(r3)
/* 804BAC6C  90 03 00 00 */	stw r0, 0(r3)
/* 804BAC70  90 03 00 04 */	stw r0, 4(r3)
/* 804BAC74  90 03 00 08 */	stw r0, 8(r3)
/* 804BAC78  4E 80 00 20 */	blr 
