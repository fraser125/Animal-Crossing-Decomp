.include "macros.inc"

.section .text

.org 0x8007867C

.global PPCMfmsr
PPCMfmsr:
/* 8007867C 000755DC  7C 60 00 A6 */	mfmsr r3
/* 80078680 000755E0  4E 80 00 20 */	blr 

.global PPCMtmsr
PPCMtmsr:
/* 80078684 000755E4  7C 60 01 24 */	mtmsr r3
/* 80078688 000755E8  4E 80 00 20 */	blr 

.global PPCMfhid0
PPCMfhid0:
/* 8007868C 000755EC  7C 70 FA A6 */	mfspr r3, 0x3f0
/* 80078690 000755F0  4E 80 00 20 */	blr 

.global PPCMthid0
PPCMthid0:
/* 80078694 000755F4  7C 70 FB A6 */	mtspr 0x3f0, r3
/* 80078698 000755F8  4E 80 00 20 */	blr 

.global PPCMfl2cr
PPCMfl2cr:
/* 8007869C 000755FC  7C 79 FA A6 */	mfspr r3, 0x3f9
/* 800786A0 00075600  4E 80 00 20 */	blr 

.global PPCMtl2cr
PPCMtl2cr:
/* 800786A4 00075604  7C 79 FB A6 */	mtspr 0x3f9, r3
/* 800786A8 00075608  4E 80 00 20 */	blr 

.global PPCMtdec
PPCMtdec:
/* 800786AC 0007560C  7C 76 03 A6 */	mtspr 0x16, r3
/* 800786B0 00075610  4E 80 00 20 */	blr 

.global PPCSync
PPCSync:
/* 800786B4 00075614  44 00 00 02 */	sc 
/* 800786B8 00075618  4E 80 00 20 */	blr 

.global PPCHalt
PPCHalt:
/* 800786BC 0007561C  7C 00 04 AC */	sync 0
lbl_800786C0:
/* 800786C0 00075620  60 00 00 00 */	nop 
/* 800786C4 00075624  38 60 00 00 */	li r3, 0
/* 800786C8 00075628  60 00 00 00 */	nop 
/* 800786CC 0007562C  4B FF FF F4 */	b lbl_800786C0

.global PPCMfhid2
PPCMfhid2:
/* 800786D0 00075630  7C 78 E2 A6 */	mfspr r3, 0x398
/* 800786D4 00075634  4E 80 00 20 */	blr 

.global PPCMthid2
PPCMthid2:
/* 800786D8 00075638  7C 78 E3 A6 */	mtspr 0x398, r3
/* 800786DC 0007563C  4E 80 00 20 */	blr 

.global PPCMtwpar
PPCMtwpar:
/* 800786E0 00075640  7C 79 E3 A6 */	mtspr 0x399, r3
/* 800786E4 00075644  4E 80 00 20 */	blr 

.global PPCDisableSpeculation
PPCDisableSpeculation:
/* 800786E8 00075648  7C 08 02 A6 */	mflr r0
/* 800786EC 0007564C  90 01 00 04 */	stw r0, 4(r1)
/* 800786F0 00075650  94 21 FF F8 */	stwu r1, -8(r1)
/* 800786F4 00075654  4B FF FF 99 */	bl PPCMfhid0
/* 800786F8 00075658  60 63 02 00 */	ori r3, r3, 0x200
/* 800786FC 0007565C  4B FF FF 99 */	bl PPCMthid0
/* 80078700 00075660  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80078704 00075664  38 21 00 08 */	addi r1, r1, 8
/* 80078708 00075668  7C 08 03 A6 */	mtlr r0
/* 8007870C 0007566C  4E 80 00 20 */	blr 

.global PPCSetFpNonIEEEMode
PPCSetFpNonIEEEMode:
/* 80078710 00075670  FF A0 00 4C */	mtfsb1 0x1d
/* 80078714 00075674  4E 80 00 20 */	blr 
