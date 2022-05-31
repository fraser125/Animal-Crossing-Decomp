lbl_80572254:
/* 80572254  3C 80 80 57 */	lis r4, aNRST_talk_request@ha /* 0x80572E70@ha */
/* 80572258  38 04 2E 70 */	addi r0, r4, aNRST_talk_request@l /* 0x80572E70@l */
/* 8057225C  90 03 09 64 */	stw r0, 0x964(r3)
/* 80572260  4E 80 00 20 */	blr 
