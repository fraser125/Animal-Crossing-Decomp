lbl_804711A0:
/* 804711A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804711A4  3D 20 80 64 */	lis r9, lit_885@ha /* 0x806449F4@ha */
/* 804711A8  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 804711AC  C0 29 49 F4 */	lfs f1, lit_885@l(r9)  /* 0x806449F4@l */
/* 804711B0  C0 08 00 00 */	lfs f0, 0(r8)
/* 804711B4  2C 00 00 02 */	cmpwi r0, 2
/* 804711B8  EC 00 08 24 */	fdivs f0, f0, f1
/* 804711BC  FC 00 00 1E */	fctiwz f0, f0
/* 804711C0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804711C4  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 804711C8  90 E3 00 00 */	stw r7, 0(r3)
/* 804711CC  C0 08 00 08 */	lfs f0, 8(r8)
/* 804711D0  EC 00 08 24 */	fdivs f0, f0, f1
/* 804711D4  FC 00 00 1E */	fctiwz f0, f0
/* 804711D8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804711DC  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 804711E0  90 E4 00 00 */	stw r7, 0(r4)
/* 804711E4  41 82 00 5C */	beq lbl_80471240
/* 804711E8  40 80 00 14 */	bge lbl_804711FC
/* 804711EC  2C 00 00 00 */	cmpwi r0, 0
/* 804711F0  41 82 00 18 */	beq lbl_80471208
/* 804711F4  40 80 00 30 */	bge lbl_80471224
/* 804711F8  48 00 00 80 */	b lbl_80471278
lbl_804711FC:
/* 804711FC  2C 00 00 04 */	cmpwi r0, 4
/* 80471200  40 80 00 78 */	bge lbl_80471278
/* 80471204  48 00 00 58 */	b lbl_8047125C
lbl_80471208:
/* 80471208  80 03 00 00 */	lwz r0, 0(r3)
/* 8047120C  38 60 00 01 */	li r3, 1
/* 80471210  90 05 00 00 */	stw r0, 0(r5)
/* 80471214  80 84 00 00 */	lwz r4, 0(r4)
/* 80471218  38 04 FF FF */	addi r0, r4, -1
/* 8047121C  90 06 00 00 */	stw r0, 0(r6)
/* 80471220  48 00 00 5C */	b lbl_8047127C
lbl_80471224:
/* 80471224  80 E3 00 00 */	lwz r7, 0(r3)
/* 80471228  38 60 00 01 */	li r3, 1
/* 8047122C  38 07 FF FF */	addi r0, r7, -1
/* 80471230  90 05 00 00 */	stw r0, 0(r5)
/* 80471234  80 04 00 00 */	lwz r0, 0(r4)
/* 80471238  90 06 00 00 */	stw r0, 0(r6)
/* 8047123C  48 00 00 40 */	b lbl_8047127C
lbl_80471240:
/* 80471240  80 03 00 00 */	lwz r0, 0(r3)
/* 80471244  38 60 00 01 */	li r3, 1
/* 80471248  90 05 00 00 */	stw r0, 0(r5)
/* 8047124C  80 84 00 00 */	lwz r4, 0(r4)
/* 80471250  38 04 00 01 */	addi r0, r4, 1
/* 80471254  90 06 00 00 */	stw r0, 0(r6)
/* 80471258  48 00 00 24 */	b lbl_8047127C
lbl_8047125C:
/* 8047125C  80 E3 00 00 */	lwz r7, 0(r3)
/* 80471260  38 60 00 01 */	li r3, 1
/* 80471264  38 07 00 01 */	addi r0, r7, 1
/* 80471268  90 05 00 00 */	stw r0, 0(r5)
/* 8047126C  80 04 00 00 */	lwz r0, 0(r4)
/* 80471270  90 06 00 00 */	stw r0, 0(r6)
/* 80471274  48 00 00 08 */	b lbl_8047127C
lbl_80471278:
/* 80471278  38 60 00 00 */	li r3, 0
lbl_8047127C:
/* 8047127C  38 21 00 20 */	addi r1, r1, 0x20
/* 80471280  4E 80 00 20 */	blr 
