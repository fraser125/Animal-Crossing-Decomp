lbl_80592798:
/* 80592798  3C A0 80 6C */	lis r5, process_575@ha /* 0x806C2A44@ha */
/* 8059279C  54 80 10 3A */	slwi r0, r4, 2
/* 805927A0  38 85 2A 44 */	addi r4, r5, process_575@l /* 0x806C2A44@l */
/* 805927A4  7C 04 00 2E */	lwzx r0, r4, r0
/* 805927A8  90 03 09 9C */	stw r0, 0x99c(r3)
/* 805927AC  4E 80 00 20 */	blr 
