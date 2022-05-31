lbl_804FA70C:
/* 804FA70C  3C 80 80 65 */	lis r4, lit_9522@ha /* 0x806484D0@ha */
/* 804FA710  C0 43 01 84 */	lfs f2, 0x184(r3)
/* 804FA714  C0 24 84 D0 */	lfs f1, lit_9522@l(r4)  /* 0x806484D0@l */
/* 804FA718  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804FA71C  4C 40 13 82 */	cror 2, 0, 2
/* 804FA720  40 82 00 14 */	bne lbl_804FA734
/* 804FA724  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804FA728  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804FA72C  D0 03 0D 28 */	stfs f0, 0xd28(r3)
/* 804FA730  4E 80 00 20 */	blr 
lbl_804FA734:
/* 804FA734  3C 80 80 65 */	lis r4, lit_13383@ha /* 0x8064855C@ha */
/* 804FA738  C0 04 85 5C */	lfs f0, lit_13383@l(r4)  /* 0x8064855C@l */
/* 804FA73C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804FA740  40 80 00 1C */	bge lbl_804FA75C
/* 804FA744  3C 80 80 65 */	lis r4, lit_13384@ha /* 0x80648560@ha */
/* 804FA748  EC 02 08 28 */	fsubs f0, f2, f1
/* 804FA74C  C0 24 85 60 */	lfs f1, lit_13384@l(r4)  /* 0x80648560@l */
/* 804FA750  EC 01 00 32 */	fmuls f0, f1, f0
/* 804FA754  D0 03 0D 28 */	stfs f0, 0xd28(r3)
/* 804FA758  4E 80 00 20 */	blr 
lbl_804FA75C:
/* 804FA75C  3C 80 80 64 */	lis r4, lit_790@ha /* 0x80646668@ha */
/* 804FA760  C0 04 66 68 */	lfs f0, lit_790@l(r4)  /* 0x80646668@l */
/* 804FA764  D0 03 0D 28 */	stfs f0, 0xd28(r3)
/* 804FA768  4E 80 00 20 */	blr 
