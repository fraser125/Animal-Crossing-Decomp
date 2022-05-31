lbl_804CDD00:
/* 804CDD00  3C A0 80 6A */	lis r5, default_offset@ha /* 0x8069BEAC@ha */
/* 804CDD04  28 04 00 00 */	cmplwi r4, 0
/* 804CDD08  38 C5 BE AC */	addi r6, r5, default_offset@l /* 0x8069BEAC@l */
/* 804CDD0C  80 A6 00 00 */	lwz r5, 0(r6)
/* 804CDD10  80 06 00 04 */	lwz r0, 4(r6)
/* 804CDD14  90 A3 00 40 */	stw r5, 0x40(r3)
/* 804CDD18  90 03 00 44 */	stw r0, 0x44(r3)
/* 804CDD1C  80 06 00 08 */	lwz r0, 8(r6)
/* 804CDD20  90 03 00 48 */	stw r0, 0x48(r3)
/* 804CDD24  4D 82 00 20 */	beqlr 
/* 804CDD28  80 A4 00 00 */	lwz r5, 0(r4)
/* 804CDD2C  80 04 00 04 */	lwz r0, 4(r4)
/* 804CDD30  90 A3 00 40 */	stw r5, 0x40(r3)
/* 804CDD34  90 03 00 44 */	stw r0, 0x44(r3)
/* 804CDD38  80 04 00 08 */	lwz r0, 8(r4)
/* 804CDD3C  90 03 00 48 */	stw r0, 0x48(r3)
/* 804CDD40  4E 80 00 20 */	blr 
