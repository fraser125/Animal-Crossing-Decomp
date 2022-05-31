lbl_8040747C:
/* 8040747C  38 03 F8 30 */	addi r0, r3, -2000
/* 80407480  3C 60 80 66 */	lis r3, l_lbRk_ConvertTable@ha /* 0x8065EBF4@ha */
/* 80407484  1C A0 00 1A */	mulli r5, r0, 0x1a
/* 80407488  38 04 FF FF */	addi r0, r4, -1
/* 8040748C  38 63 EB F4 */	addi r3, r3, l_lbRk_ConvertTable@l /* 0x8065EBF4@l */
/* 80407490  54 00 08 3C */	slwi r0, r0, 1
/* 80407494  7C 63 2A 14 */	add r3, r3, r5
/* 80407498  7C 63 02 14 */	add r3, r3, r0
/* 8040749C  4E 80 00 20 */	blr 
