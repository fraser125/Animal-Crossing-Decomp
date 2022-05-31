lbl_803D8FE8:
/* 803D8FE8  3C 60 81 17 */	lis r3, data_8116EDE0@ha /* 0x8116EDE0@ha */
/* 803D8FEC  38 83 ED E0 */	addi r4, r3, data_8116EDE0@l /* 0x8116EDE0@l */
/* 803D8FF0  80 04 00 00 */	lwz r0, 0(r4)
/* 803D8FF4  68 03 00 01 */	xori r3, r0, 1
/* 803D8FF8  90 64 00 00 */	stw r3, 0(r4)
/* 803D8FFC  4E 80 00 20 */	blr 
