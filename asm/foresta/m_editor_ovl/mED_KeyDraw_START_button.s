lbl_805DAF68:
/* 805DAF68  80 E3 02 D0 */	lwz r7, 0x2d0(r3)
/* 805DAF6C  3C C0 DE 00 */	lis r6, 0xde00
/* 805DAF70  3C A0 80 A7 */	lis r5, kai_sousa_startbuttonT_model@ha /* 0x80A6DD58@ha */
/* 805DAF74  3C 80 80 A7 */	lis r4, kai_sousa_endT_model@ha /* 0x80A6DD98@ha */
/* 805DAF78  90 C7 00 00 */	stw r6, 0(r7)
/* 805DAF7C  38 A5 DD 58 */	addi r5, r5, kai_sousa_startbuttonT_model@l /* 0x80A6DD58@l */
/* 805DAF80  38 04 DD 98 */	addi r0, r4, kai_sousa_endT_model@l /* 0x80A6DD98@l */
/* 805DAF84  90 A7 00 04 */	stw r5, 4(r7)
/* 805DAF88  38 E7 00 08 */	addi r7, r7, 8
/* 805DAF8C  7C E4 3B 78 */	mr r4, r7
/* 805DAF90  90 C7 00 00 */	stw r6, 0(r7)
/* 805DAF94  38 E7 00 08 */	addi r7, r7, 8
/* 805DAF98  90 04 00 04 */	stw r0, 4(r4)
/* 805DAF9C  90 E3 02 D0 */	stw r7, 0x2d0(r3)
/* 805DAFA0  4E 80 00 20 */	blr 
