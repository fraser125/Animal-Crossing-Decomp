lbl_8057DF4C:
/* 8057DF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DF50  7C 08 02 A6 */	mflr r0
/* 8057DF54  7C 65 1B 78 */	mr r5, r3
/* 8057DF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DF5C  80 03 09 94 */	lwz r0, 0x994(r3)
/* 8057DF60  2C 00 00 18 */	cmpwi r0, 0x18
/* 8057DF64  40 82 00 14 */	bne lbl_8057DF78
/* 8057DF68  81 85 09 A0 */	lwz r12, 0x9a0(r5)
/* 8057DF6C  7D 89 03 A6 */	mtctr r12
/* 8057DF70  4E 80 04 21 */	bctrl 
/* 8057DF74  48 00 00 58 */	b lbl_8057DFCC
lbl_8057DF78:
/* 8057DF78  28 00 00 01 */	cmplwi r0, 1
/* 8057DF7C  40 81 00 0C */	ble lbl_8057DF88
/* 8057DF80  2C 00 00 02 */	cmpwi r0, 2
/* 8057DF84  40 82 00 18 */	bne lbl_8057DF9C
lbl_8057DF88:
/* 8057DF88  81 85 09 A0 */	lwz r12, 0x9a0(r5)
/* 8057DF8C  7C A3 2B 78 */	mr r3, r5
/* 8057DF90  7D 89 03 A6 */	mtctr r12
/* 8057DF94  4E 80 04 21 */	bctrl 
/* 8057DF98  48 00 00 34 */	b lbl_8057DFCC
lbl_8057DF9C:
/* 8057DF9C  88 05 07 F6 */	lbz r0, 0x7f6(r5)
/* 8057DFA0  28 00 00 FF */	cmplwi r0, 0xff
/* 8057DFA4  40 82 00 14 */	bne lbl_8057DFB8
/* 8057DFA8  81 85 09 A0 */	lwz r12, 0x9a0(r5)
/* 8057DFAC  7D 89 03 A6 */	mtctr r12
/* 8057DFB0  4E 80 04 21 */	bctrl 
/* 8057DFB4  48 00 00 18 */	b lbl_8057DFCC
lbl_8057DFB8:
/* 8057DFB8  88 05 07 F5 */	lbz r0, 0x7f5(r5)
/* 8057DFBC  28 00 00 02 */	cmplwi r0, 2
/* 8057DFC0  40 82 00 0C */	bne lbl_8057DFCC
/* 8057DFC4  38 00 10 00 */	li r0, 0x1000
/* 8057DFC8  B0 05 09 26 */	sth r0, 0x926(r5)
lbl_8057DFCC:
/* 8057DFCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DFD0  7C 08 03 A6 */	mtlr r0
/* 8057DFD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DFD8  4E 80 00 20 */	blr 
