lbl_803B14D4:
/* 803B14D4  80 E3 00 00 */	lwz r7, 0(r3)
/* 803B14D8  3C 80 80 65 */	lis r4, disp_1055@ha /* 0x80654358@ha */
/* 803B14DC  3C A0 DE 00 */	lis r5, 0xde00
/* 803B14E0  38 C7 00 08 */	addi r6, r7, 8
/* 803B14E4  38 04 43 58 */	addi r0, r4, disp_1055@l /* 0x80654358@l */
/* 803B14E8  90 C3 00 00 */	stw r6, 0(r3)
/* 803B14EC  90 A7 00 00 */	stw r5, 0(r7)
/* 803B14F0  90 07 00 04 */	stw r0, 4(r7)
/* 803B14F4  4E 80 00 20 */	blr 