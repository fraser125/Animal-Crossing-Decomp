lbl_80561934:
/* 80561934  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D070@ha */
/* 80561938  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 8056193C  38 64 D0 70 */	addi r3, r4, 0xD070 /* 0x0000D070@l */
/* 80561940  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80561944  7C 05 00 50 */	subf r0, r5, r0
/* 80561948  7C 00 00 34 */	cntlzw r0, r0
/* 8056194C  54 00 D9 7E */	srwi r0, r0, 5
/* 80561950  7C 60 1A 14 */	add r3, r0, r3
/* 80561954  4E 80 00 20 */	blr 
