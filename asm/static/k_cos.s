.include "macros.inc"

.section .text

.org 0x800A0764

.global __kernel_cos
__kernel_cos:
/* 800A0764 0009D6C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A0768 0009D6C8  3C 00 3E 40 */	lis r0, 0x3e40
/* 800A076C 0009D6CC  D8 21 00 08 */	stfd f1, 8(r1)
/* 800A0770 0009D6D0  80 61 00 08 */	lwz r3, 8(r1)
/* 800A0774 0009D6D4  54 64 00 7E */	clrlwi r4, r3, 1
/* 800A0778 0009D6D8  7C 04 00 00 */	cmpw r4, r0
/* 800A077C 0009D6DC  40 80 00 20 */	bge lbl_800A079C
/* 800A0780 0009D6E0  FC 00 08 1E */	fctiwz f0, f1
/* 800A0784 0009D6E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800A0788 0009D6E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A078C 0009D6EC  2C 00 00 00 */	cmpwi r0, 0
/* 800A0790 0009D6F0  40 82 00 0C */	bne lbl_800A079C
/* 800A0794 0009D6F4  C8 22 89 F8 */	lfd f1, @71-_SDA2_BASE_(r2)
/* 800A0798 0009D6F8  48 00 00 B8 */	b lbl_800A0850
lbl_800A079C:
/* 800A079C 0009D6FC  C8 C1 00 08 */	lfd f6, 8(r1)
/* 800A07A0 0009D700  3C 60 3F D3 */	lis r3, 0x3FD33333@ha
/* 800A07A4 0009D704  38 03 33 33 */	addi r0, r3, 0x3FD33333@l
/* 800A07A8 0009D708  C8 A2 8A 28 */	lfd f5, @77-_SDA2_BASE_(r2)
/* 800A07AC 0009D70C  FC E6 01 B2 */	fmul f7, f6, f6
/* 800A07B0 0009D710  C8 02 8A 20 */	lfd f0, @76-_SDA2_BASE_(r2)
/* 800A07B4 0009D714  C8 82 8A 18 */	lfd f4, @75-_SDA2_BASE_(r2)
/* 800A07B8 0009D718  7C 04 00 00 */	cmpw r4, r0
/* 800A07BC 0009D71C  C8 62 8A 10 */	lfd f3, @74-_SDA2_BASE_(r2)
/* 800A07C0 0009D720  C8 22 8A 08 */	lfd f1, @73-_SDA2_BASE_(r2)
/* 800A07C4 0009D724  FC A5 01 FA */	fmadd f5, f5, f7, f0
/* 800A07C8 0009D728  C8 02 8A 00 */	lfd f0, @72-_SDA2_BASE_(r2)
/* 800A07CC 0009D72C  FC 87 21 7A */	fmadd f4, f7, f5, f4
/* 800A07D0 0009D730  FC 67 19 3A */	fmadd f3, f7, f4, f3
/* 800A07D4 0009D734  FC 27 08 FA */	fmadd f1, f7, f3, f1
/* 800A07D8 0009D738  FC 07 00 7A */	fmadd f0, f7, f1, f0
/* 800A07DC 0009D73C  FC 87 00 32 */	fmul f4, f7, f0
/* 800A07E0 0009D740  40 80 00 20 */	bge lbl_800A0800
/* 800A07E4 0009D744  FC 06 00 B2 */	fmul f0, f6, f2
/* 800A07E8 0009D748  C8 22 8A 30 */	lfd f1, @78-_SDA2_BASE_(r2)
/* 800A07EC 0009D74C  C8 42 89 F8 */	lfd f2, @71-_SDA2_BASE_(r2)
/* 800A07F0 0009D750  FC 07 01 38 */	fmsub f0, f7, f4, f0
/* 800A07F4 0009D754  FC 01 01 F8 */	fmsub f0, f1, f7, f0
/* 800A07F8 0009D758  FC 22 00 28 */	fsub f1, f2, f0
/* 800A07FC 0009D75C  48 00 00 54 */	b lbl_800A0850
lbl_800A0800:
/* 800A0800 0009D760  3C 00 3F E9 */	lis r0, 0x3fe9
/* 800A0804 0009D764  7C 04 00 00 */	cmpw r4, r0
/* 800A0808 0009D768  40 81 00 10 */	ble lbl_800A0818
/* 800A080C 0009D76C  C8 02 8A 38 */	lfd f0, @79-_SDA2_BASE_(r2)
/* 800A0810 0009D770  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800A0814 0009D774  48 00 00 14 */	b lbl_800A0828
lbl_800A0818:
/* 800A0818 0009D778  3C 64 FF E0 */	addis r3, r4, 0xffe0
/* 800A081C 0009D77C  38 00 00 00 */	li r0, 0
/* 800A0820 0009D780  90 61 00 10 */	stw r3, 0x10(r1)
/* 800A0824 0009D784  90 01 00 14 */	stw r0, 0x14(r1)
lbl_800A0828:
/* 800A0828 0009D788  C8 01 00 08 */	lfd f0, 8(r1)
/* 800A082C 0009D78C  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 800A0830 0009D790  FC 00 00 B2 */	fmul f0, f0, f2
/* 800A0834 0009D794  C8 22 8A 30 */	lfd f1, @78-_SDA2_BASE_(r2)
/* 800A0838 0009D798  C8 42 89 F8 */	lfd f2, @71-_SDA2_BASE_(r2)
/* 800A083C 0009D79C  FC 21 19 F8 */	fmsub f1, f1, f7, f3
/* 800A0840 0009D7A0  FC 07 01 38 */	fmsub f0, f7, f4, f0
/* 800A0844 0009D7A4  FC 42 18 28 */	fsub f2, f2, f3
/* 800A0848 0009D7A8  FC 01 00 28 */	fsub f0, f1, f0
/* 800A084C 0009D7AC  FC 22 00 28 */	fsub f1, f2, f0
lbl_800A0850:
/* 800A0850 0009D7B0  38 21 00 20 */	addi r1, r1, 0x20
/* 800A0854 0009D7B4  4E 80 00 20 */	blr 