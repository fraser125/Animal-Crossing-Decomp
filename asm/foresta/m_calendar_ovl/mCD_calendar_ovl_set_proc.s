lbl_805C80B8:
/* 805C80B8  3C 80 80 5C */	lis r4, mCD_calendar_ovl_move@ha /* 0x805C7F04@ha */
/* 805C80BC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C80C0  38 04 7F 04 */	addi r0, r4, mCD_calendar_ovl_move@l /* 0x805C7F04@l */
/* 805C80C4  3C 60 80 5C */	lis r3, mCD_calendar_ovl_draw@ha /* 0x805C7F74@ha */
/* 805C80C8  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805C80CC  38 03 7F 74 */	addi r0, r3, mCD_calendar_ovl_draw@l /* 0x805C7F74@l */
/* 805C80D0  90 05 09 10 */	stw r0, 0x910(r5)
/* 805C80D4  4E 80 00 20 */	blr 
