lbl_8052A58C:
/* 8052A58C  2C 04 00 01 */	cmpwi r4, 1
/* 8052A590  40 82 00 24 */	bne lbl_8052A5B4
/* 8052A594  3C A0 80 65 */	lis r5, lit_545@ha /* 0x80649244@ha */
/* 8052A598  3C 80 80 65 */	lis r4, lit_546@ha /* 0x80649248@ha */
/* 8052A59C  C0 25 92 44 */	lfs f1, lit_545@l(r5)  /* 0x80649244@l */
/* 8052A5A0  C0 04 92 48 */	lfs f0, lit_546@l(r4)  /* 0x80649248@l */
/* 8052A5A4  D0 23 08 F8 */	stfs f1, 0x8f8(r3)
/* 8052A5A8  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8052A5AC  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8052A5B0  4E 80 00 20 */	blr 
lbl_8052A5B4:
/* 8052A5B4  3C 80 80 65 */	lis r4, lit_547@ha /* 0x8064924C@ha */
/* 8052A5B8  C0 04 92 4C */	lfs f0, lit_547@l(r4)  /* 0x8064924C@l */
/* 8052A5BC  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8052A5C0  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8052A5C4  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8052A5C8  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8052A5CC  4E 80 00 20 */	blr 
