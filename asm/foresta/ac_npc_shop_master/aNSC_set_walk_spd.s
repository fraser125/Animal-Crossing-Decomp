lbl_805773AC:
/* 805773AC  3C 80 80 65 */	lis r4, lit_627@ha /* 0x806499BC@ha */
/* 805773B0  3C A0 80 65 */	lis r5, lit_628@ha /* 0x806499C0@ha */
/* 805773B4  38 C4 99 BC */	addi r6, r4, lit_627@l /* 0x806499BC@l */
/* 805773B8  C0 25 99 C0 */	lfs f1, lit_628@l(r5)  /* 0x806499C0@l */
/* 805773BC  C0 06 00 00 */	lfs f0, 0(r6)
/* 805773C0  3C 80 80 65 */	lis r4, lit_629@ha /* 0x806499C4@ha */
/* 805773C4  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 805773C8  C0 04 99 C4 */	lfs f0, lit_629@l(r4)  /* 0x806499C4@l */
/* 805773CC  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 805773D0  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 805773D4  4E 80 00 20 */	blr 
